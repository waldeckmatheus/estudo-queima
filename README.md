# Mini-Protocolo de Cutting Assistido — Sprint de Férias

Documentação técnica de um **protocolo de mini-cut de 30 dias** com embasamento científico, gerada em PDF a partir de Markdown via Pandoc + XeLaTeX. O projeto cobre desde a mecânica do déficit calórico até adaptações populacionais, com **109 referências científicas** (91 PubMed/Cochrane + 18 outras fontes) e um glossário de **143 termos técnicos**.

> **Público-alvo:** adultos saudáveis de 18–60 anos. Capítulos específicos cobrem adaptações para mulheres (Cap. 19), idosos ≥ 65 anos (Cap. 22), menopausa (Cap. 23) e contraindicação para crianças/adolescentes (Cap. 24).

---

## Conteúdo — 24 capítulos

| Domínio | Capítulos |
|---|---|
| **Núcleo do protocolo** | 1. Visão Geral · 2. Embasamento Científico · 3. Roteiro Diário · 4. Hidratação · 5. Exercício Aeróbico · 6. Suplementação · 10. Breakdown Nutricional |
| **Segurança e monitoramento** | 7. Protocolos de Segurança · 9. Troubleshooting · 11. Ciclo de Vida · 15. Medicações e Protocolo |
| **Desempenho e recuperação** | 12. Música e Treino · 14. Exercício e Dieta · 16. Sono e Ritmo Circadiano · 17. Gestão Psicológica · 20. Treinamento Resistido · 21. Saúde Intestinal |
| **Contextos especiais** | 8. FAQ · 13. Comparativo com Dietas · 18. Álcool e Alimentação Social |
| **Adaptações populacionais** | 19. Mulheres · 22. Idosos · 23. Menopausa · 24. Crianças (**contraindicação**) |
| **Apêndices** | Glossário (143 termos, 13 especialidades) · Referências (109 únicas, [web:5]–[web:142]) |

---

## Estrutura do projeto

```
capitulos/          # 24 capítulos + glossário + referências (Markdown)
temas/              # Temas de cor (claro, escuro, impressao) + template LaTeX + filtros Lua
metadata.yaml       # Título, autor, data e metadados do documento
index.md            # Índice analítico
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
