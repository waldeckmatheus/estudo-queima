# Mini-Protocolo de Recomposição Corporal — Sprint de Férias

Documentação técnica do protocolo **Queima v5.8**, gerada em PDF a partir de arquivos Markdown via Pandoc + XeLaTeX.

---

## Estrutura do projeto

```
capitulos/          # Capítulos em Markdown (01 a 12)
temas/              # Temas de cor (claro, escuro, impressao) + template LaTeX
metadata.yaml       # Título, autor, data e metadados do documento
docker-compose.yml  # Pipeline de build via container
build.ps1           # Build local (requer Pandoc + MiKTeX instalados)
dist/               # PDFs gerados (ignorado pelo git)
```

---

## Build via Docker (recomendado)

> Pré-requisito: [Docker Desktop](https://www.docker.com/products/docker-desktop/) instalado e em execução.

### Tema claro

```powershell
$env:COMMIT = git rev-parse --short HEAD; docker compose run --rm claro
```

### Tema escuro

```powershell
$env:COMMIT = git rev-parse --short HEAD; docker compose run --rm escuro
```

### Tema impressão

```powershell
$env:COMMIT = git rev-parse --short HEAD; docker compose run --rm impressao
```

### Todos os temas em paralelo

```powershell
$env:COMMIT = git rev-parse --short HEAD; docker compose up
```

Os PDFs são gerados em `dist/` com o nome `queima-<commit>-<tema>.pdf`, por exemplo:

```
dist/queima-a3f192c-claro.pdf
dist/queima-a3f192c-escuro.pdf
dist/queima-a3f192c-impressao.pdf
```

> Se executar sem definir `$env:COMMIT`, o nome do arquivo usará `local` como fallback.

---

## Build local (Windows, sem Docker)

> Pré-requisitos:
> ```powershell
> winget install JohnMacFarlane.Pandoc
> winget install MiKTeX.MiKTeX
> ```
> Após instalar o MiKTeX, abra o **MiKTeX Console** e execute **Updates → Update now**.

```powershell
# Todos os temas
.\build.ps1

# Tema específico
.\build.ps1 -Tema claro
.\build.ps1 -Tema escuro
.\build.ps1 -Tema impressao

# Dois temas
.\build.ps1 -Tema claro,impressao

# Listar temas disponíveis
.\build.ps1 -ListarTemas
```

---

## Temas disponíveis

| Tema | Descrição |
|------|-----------|
| `claro` | Fundo branco, ideal para leitura em tela ou impressão colorida |
| `escuro` | Fundo escuro, ideal para leitura noturna |
| `impressao` | Otimizado para impressão em preto e branco |

---

## Adicionando um novo tema

1. Crie `temas/meutema.yaml` baseado em um dos YAMLs existentes
2. Defina as variáveis de cor: `bgcolor`, `fgcolor`, `headingcolor`, `accentcolor`, `linkcolor`, `codeblockbg`, `tableheadbg`
3. Execute `docker compose run --rm meutema` ou `.\build.ps1 -Tema meutema`
