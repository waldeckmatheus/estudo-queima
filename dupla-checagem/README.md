# Dupla Checagem — Auditoria do Projeto Queima

Diretório de auditoria contendo a revisão sistemática de todos os capítulos,
apêndices e referências do protocolo Queima 5.8.

---

## Estratégia de Revisão

A dupla checagem seguiu uma abordagem em **4 fases sequenciais**, cada uma
alimentando a próxima:

### Fase 1 — Mapeamento Referencial

Varredura automatizada de todos os arquivos `capitulos/*.md` via regex
(`\[web:\d+\]`) para extrair o mapa completo de uso de referências.
O resultado foi cruzado bidireccionalmente com `XN-referencias.md`:

```
Usadas nos capítulos  →  existem em XN?    ✅ 0 órfãs
Definidas em XN       →  usadas em algum cap?  ✅ 0 ociosas
```

### Fase 2 — Auditoria de Conteúdo por Capítulo

Cada capítulo foi lido integralmente e avaliado em 7 dimensões:

| Dimensão | O que foi verificado |
|----------|---------------------|
| Estrutura | Seções (###), hierarquia, completude |
| Referências | Tags `[web:N]` presentes e consistentes com XN |
| Precisão factual | Claims científicos confrontados com a literatura citada |
| Refs cruzadas | Links a outros capítulos coerentes e bidirecionais |
| Callouts | Uso correto de `.callout-danger`, `-warning`, `-important`, `-tip`, `-note` |
| Linguagem | Clareza, consistência terminológica, português técnico |
| Segurança | Stop criteria, disclaimers e contraindicações presentes onde necessário |

### Fase 3 — Verificação de Apêndices

- **Glossário (X1):** contagem de termos por categoria, ordem alfabética
  dentro de cada seção, concordância com tabela de resumo do arquivo.
- **Referências (XN):** formato de citação, integridade de URLs,
  categorização por prioridade (Alta / Suporte / Baixa).

### Fase 4 — Consolidação e Classificação

Todos os achados foram consolidados em `00-resumo-geral.md` com
classificação de severidade:

| Nível | Critério |
|-------|----------|
| **Crítico** | Erro factual, referência ausente, risco à segurança |
| **Médio** | Incompletude funcional, referência circular, lacuna de conteúdo |
| **Baixo** | Typo, melhoria de clareza, detalhe menor |

---

## Resultados em Números

| Métrica | Valor |
|---------|-------|
| Capítulos auditados | 24 |
| Apêndices auditados | 2 |
| Relatórios gerados | 27 |
| Referências únicas verificadas | 109 |
| Integridade referencial | **100%** |
| Termos no glossário | 143 (13 categorias) |
| Erros críticos | **0** |
| Alertas médios | 3 |
| Alertas baixos | 9 |

---

## Estrutura do Diretório

```
dupla-checagem/
├── README.md                    ← este arquivo
├── 00-resumo-geral.md           ← consolidado com métricas globais
├── 01-visao-geral.md            ✅
├── 02-embasamento-cientifico.md ✅
├── 03-roteiro-diario.md         ✅ (1 alerta baixo)
├── 04-gestao-hidratacao.md      ✅
├── 05-dinamica-exercicio.md     ✅ (1 alerta baixo)
├── 06-gestao-suplementacao.md   ✅ (1 alerta baixo)
├── 07-protocolos-seguranca.md   ✅ (1 alerta baixo)
├── 08-faq.md                    ✅
├── 09-troubleshooting.md        ✅
├── 10-breakdown-nutricional.md  ⚠️ (2 alertas médios)
├── 11-ciclo-vida-projeto.md     ⚠️ (1 baixo + 2 médios)
├── 12-musica-e-treino.md        ✅
├── 13-comparativo-dietas.md     ✅
├── 14-exercicio-e-dieta.md      ⚠️ (1 alerta médio)
├── 15-medicacoes-e-protocolo.md ✅
├── 16-sono-e-ritmo-circadiano.md ✅
├── 17-gestao-psicologica.md     ✅ (2 alertas baixos)
├── 18-alcool-alimentacao-social.md ✅
├── 19-adaptacoes-mulheres.md    ✅
├── 20-treinamento-resistido.md  ✅ (1 alerta baixo)
├── 21-saude-intestinal.md       ✅ (1 alerta baixo)
├── 22-adaptacoes-idosos.md      ✅
├── 23-menopausa-e-mini-cut.md   ✅
├── 24-criancas-adolescentes.md  ✅
├── X1-glossario.md              ✅
└── XN-referencias.md            ✅
```

**Legenda:** ✅ Aprovado · ⚠️ Aprovado com ressalvas

---

## Capítulos com Maior Densidade de Citações

| # | Capítulo | Refs únicas |
|---|----------|-------------|
| 1 | Cap. 8 — FAQ Técnico | 33 |
| 2 | Cap. 13 — Comparativo de Dietas | 15 |
| 3 | Cap. 9 — Troubleshooting | 10 |
| 4 | Cap. 2 — Embasamento Científico | 8 |
| 5 | Cap. 15 — Medicações | 8 |
| 5 | Cap. 16 — Sono | 8 |

---

## Capítulos com Maior Conectividade

Refs cruzadas a outros capítulos (bidirecional):

| # | Capítulo | Caps referenciados |
|---|----------|--------------------|
| 1 | Cap. 16 — Sono | 9 |
| 2 | Cap. 21 — Saúde Intestinal | 8 |
| 3 | Cap. 18 — Álcool | 7 |
| 3 | Cap. 19 — Mulheres | 7 |
| 3 | Cap. 20 — Treino Resistido | 7 |

---

## Observações sobre a Numeração de Referências

As tags `[web:N]` possuem lacunas intencionais na sequência (e.g., `[web:1]`–`[web:4]`
nunca foram atribuídas). Isso ocorre porque a numeração foi herdada de fontes
externas de pesquisa onde nem todas as páginas resultaram em citações utilizáveis.
A integridade foi verificada: **nenhum capítulo cita uma referência inexistente, e
nenhuma referência definida está ociosa**.

---

## Como Interpretar os Relatórios

Cada arquivo de auditoria segue o mesmo template:

1. **Estrutura** — contagem de seções, refs, callouts, refs cruzadas
2. **Verificação de Conteúdo** — claims científicos vs. literatura
3. **Verificação de Referências** (caps 22–24) — tabela PMID por PMID
4. **Alertas** — tabela com severidade e descrição
5. **Resultado** — APROVADO, APROVADO COM RESSALVAS, ou REPROVADO
