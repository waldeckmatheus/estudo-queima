# build.ps1 — Pipeline de geração de PDFs temáticos
# Uso: .\build.ps1
#      .\build.ps1 -Tema escuro           (gera apenas um tema)
#      .\build.ps1 -Tema escuro,claro     (gera dois temas)
#      .\build.ps1 -ListarTemas           (exibe temas disponíveis)
#
# Pré-requisitos:
#   winget install JohnMacFarlane.Pandoc
#   winget install MiKTeX.MiKTeX
#   (Após MiKTeX: abra o MiKTeX Console e instale os pacotes via "Updates")

[CmdletBinding()]
param(
    [string]   $Tema        = "",
    [switch]   $ListarTemas
)

Set-StrictMode -Version Latest
$ErrorActionPreference = "Stop"

# --- Configuração ---
$templateFile = "temas\template.tex"
$metadataFile = "metadata.yaml"
$capitulosDir = "capitulos"
$outputDir    = "dist"
$temasDir     = "temas"

# --- Listar temas disponíveis ---
if ($ListarTemas) {
    $arquivos = Get-ChildItem "$temasDir\*.yaml" | Where-Object { $_.Name -ne "claro.yaml" -or $true }
    Write-Host "`nTemas disponíveis:"
    $arquivos | ForEach-Object { Write-Host "  - $($_.BaseName)" }
    exit 0
}

# --- Validações ---
if (-not (Get-Command pandoc -ErrorAction SilentlyContinue)) {
    Write-Error "Pandoc nao encontrado. Instale com: winget install JohnMacFarlane.Pandoc"
}
if (-not (Get-Command xelatex -ErrorAction SilentlyContinue)) {
    Write-Error "XeLaTeX nao encontrado. Instale MiKTeX: winget install MiKTeX.MiKTeX"
}
if (-not (Test-Path $templateFile)) {
    Write-Error "Template nao encontrado: $templateFile"
}

# --- Capítulos em ordem numérica ---
$capitulos = Get-ChildItem "$capitulosDir\*.md" |
             Sort-Object Name |
             Select-Object -ExpandProperty FullName

if ($capitulos.Count -eq 0) {
    Write-Error "Nenhum arquivo .md encontrado em '$capitulosDir\'"
}

Write-Host "Capitulos encontrados: $($capitulos.Count)"
$capitulos | ForEach-Object { Write-Host "  $([System.IO.Path]::GetFileName($_))" }

# --- Seleção de temas ---
if ($Tema -ne "") {
    $temasSelecionados = $Tema -split "," | ForEach-Object { $_.Trim() }
} else {
    $temasSelecionados = Get-ChildItem "$temasDir\*.yaml" |
                         Where-Object { $_.Name -notmatch "^(claro|escuro|impressao)\.yaml$" -eq $false } |
                         Select-Object -ExpandProperty BaseName
}

# --- Criar pasta de saída ---
if (-not (Test-Path $outputDir)) {
    New-Item -ItemType Directory -Path $outputDir | Out-Null
}

# --- Geração ---
$sucessos  = @()
$erros     = @()

foreach ($tema in $temasSelecionados) {
    $temaFile = "$temasDir\$tema.yaml"

    if (-not (Test-Path $temaFile)) {
        Write-Warning "Tema '$tema' nao encontrado ($temaFile). Pulando."
        $erros += $tema
        continue
    }

    $output = "$outputDir\queima5.8-$tema.pdf"
    Write-Host "`nGerando: $output (tema: $tema) ..."

    $args = @(
        $capitulos
        "--metadata-file=$metadataFile"
        "--metadata-file=$temaFile"
        "--template=$templateFile"
        "--pdf-engine=xelatex"
        "--toc"
        "--number-sections"
        "-o", $output
    )

    try {
        & pandoc @args
        if ($LASTEXITCODE -ne 0) { throw "Pandoc retornou codigo $LASTEXITCODE" }
        Write-Host "  [OK] $output"
        $sucessos += $tema
    }
    catch {
        Write-Warning "  [ERRO] Tema '$tema': $_"
        $erros += $tema
    }
}

# --- Relatório final ---
Write-Host "`n============================================"
Write-Host "PDFs gerados com sucesso : $($sucessos.Count)  [$($sucessos -join ', ')]"
if ($erros.Count -gt 0) {
    Write-Host "Temas com erro           : $($erros.Count)  [$($erros -join ', ')]"
}
Write-Host "Saida                    : .\$outputDir\"
Write-Host "============================================"
