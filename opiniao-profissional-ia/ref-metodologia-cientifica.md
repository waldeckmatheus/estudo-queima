# Opinião Profissional — Metodologia Científica

> **⚠️ CONTEÚDO GERADO INTEGRALMENTE POR INTELIGÊNCIA ARTIFICIAL.**
> Esta análise simula o ponto de vista técnico que um **metodologista científico** (epidemiologista / pesquisador em saúde baseada em evidências) poderia oferecer ao avaliar o protocolo de mini-cut. Não substitui revisão por pares. Destina-se exclusivamente a fins educacionais.

---

## 1. Escopo da Especialidade neste Protocolo

O metodologista científico avalia a qualidade das referências citadas, nível de evidência das recomendações, presença de vieses de seleção/confirmação, extrapolações de populações distintas, adequação das conclusões aos dados e transparência na apresentação de incertezas.

---

## 2. Pontos Positivos

| # | Aspecto | Análise técnica | Referência |
|---|---|---|---|
| 1 | **125+ referências rastreáveis** | O protocolo cita [web:5]–[web:158] com 125 referências únicas, incluindo RCTs, meta-análises, revisões sistemáticas e consensos (IOC, ACSM, ISSN). A rastreabilidade permite verificação independente — raro em protocolos populares. | Cap. 12, Referências |
| 2 | **Hierarquia de evidência implícita** | As recomendações centrais (proteína alta, TR, Zona 2) são baseadas em meta-análises (Helms 2014, Morton 2018, Sardeli 2018) — nível de evidência 1a (Oxford). Recomendações secundárias (melatonina, ômega-3) são baseadas em RCTs — nível 1b–2b. Essa hierarquia, embora não explícita, é respeitada na prática. | Sistema Oxford CEBM |
| 3 | **Transparência sobre incertezas** | O protocolo explicita quando "não há consenso" (ex: fasted cardio vs. fed — "sem diferença significativa"), quando dados são preliminares (GLP-1 em mini-cut) e quando extrapola de populações diferentes (atletas → população geral). Essa honestidade epistêmica é rara. | Caps. 2, 5, 25 |
| 4 | **Uso de meta-análises como base** | As afirmações mais fortes são suportadas por meta-análises: proteína ↑ preserva MLG (Helms et al. 2014), exercício resistido em déficit (Sardeli et al. 2018), creatina + TR (Kreider et al. 2017). Meta-análises reduzem viés de publicação e variabilidade amostral. | Vários capítulos |
| 5 | **Mecanismos fisiológicos explicitados** | Ao invés de apenas citar "estudo X mostrou Y", o protocolo explica o mecanismo (ex: "déficit → leptina ↓ → NPY/AgRP ↑ → fome ↑"). Isso permite avaliação de plausibilidade biológica (critério de Bradford Hill) independentemente do estudo citado. | Caps. 2, 12, 25, 26 |
| 6 | **Reconhecimento de limitações** | Seções de troubleshooting (Cap. 9) e FAQ (Cap. 8) abordam cenários negativos (plateau, fadiga extrema, insônia), indicando que o protocolo não assume eficácia universal. | Caps. 8, 9 |

---

## 3. Pontos Negativos e Riscos

| # | Aspecto | Análise técnica | Risco | Mitigação sugerida |
|---|---|---|---|---|
| 1 | **Nível de evidência agora parcialmente classificado** | ✅ **PARCIALMENTE RESOLVIDO (v2):** O Cap. 2 agora inclui nota sobre metodologia GRADE aplicada às recomendações centrais, diferenciando evidência forte (meta-análises) de evidência moderada/baixa (observacional, mecanística). **Lacuna residual:** A classificação não é aplicada a cada recomendação individual — o leitor não vê [NE:1a] ao lado de cada afirmação. | Leitor pode não distinguir força de cada recomendação individualmente | Classificar cada recomendação individualmente com GRADE (⊕⊕⊕⊕ a ⊕○○○) |
| 2 | **Viés de seleção de referências** | As referências foram selecionadas pelo autor (ou IA) — não por busca sistemática em Cochrane/PubMed com critérios PICO. Isso cria risco de cherry-picking: selecionar estudos que suportam a tese (déficit funciona, proteína alta é segura) e omitir os que mostram riscos ou falhas. | Falsa impressão de consenso científico | Incluir pelo menos 1 referência contrastante por recomendação principal (steelmanning); conduzir busca PICO para as 3 afirmações centrais |
| 3 | **Extrapolação de atletas para população geral** | A maioria dos RCTs citados (Helms, Mero, Schoenfeld) usou atletas ou praticantes treinados como amostra. Extrapolação para sedentários, obesos, idosos ou adolescentes não é validada. O protocolo menciona populações especiais mas não ajusta as recomendações baseadas em evidência específica para elas. | Recomendações podem não se aplicar a 60% dos praticantes potenciais | Para cada recomendação, especificar: "Evidência em: [atletas treinados / população geral / etc.]"; se não há evidência direta → declarar como extrapolação |
| 4 | **Tamanhos amostrais pequenos** | Vários RCTs citados têm n < 30 (Calbet 2017: n = 15; Schoenfeld 2014: n = 20). Com n < 30, o poder estatístico é insuficiente para detectar efeitos moderados (d = 0,5) e o risco de erro tipo II é > 50%. Resultados nulos ("sem diferença") podem ser falsos negativos. | Afirmações "sem diferença" podem ser underpowered, não verdadeiras | Relatar n de cada estudo chave; se n < 30, declarar: "evidência preliminar, confirmar com estudos maiores" |
| 5 | **Viés de confirmação na apresentação** | A estrutura narrativa apresenta evidências a favor primeiro e limitações depois (quando existem). O viés de anchoring faz o leitor dar mais peso à primeira informação. Em metodologia, o formato é: PICO → evidência a favor → evidência contra → incerteza → recomendação condicional. | Leitor overweights benefícios vs. riscos | Reestruturar seções técnicas em formato PICO: P(população)–I(intervenção)–C(comparador)–O(outcome) seguido de balanço de evidências |
| 6 | **Ausência de conflito de interesse** | O protocolo não declara conflito de interesse do(s) autor(es). Em publicação científica, declaração de CoI é obrigatória. Se o protocolo vende produtos, consultorias ou afiliados, o leitor precisa saber. | Viés comercial não declarado | Incluir declaração de conflito de interesse no README ou Cap. 1 |
| 7 | **p-values e significância estatística** | Quando o protocolo cita "diferença significativa" de estudos, não reporta p-values, intervalos de confiança ou tamanho de efeito (Cohen's d). "Significativo estatisticamente" com p = 0,049 e d = 0,1 é clinicamente irrelevante. Sem esses dados, o leitor não pode julgar relevância clínica. | Confusão entre significância estatística e relevância clínica | Para as 10 afirmações mais importantes, reportar: p, IC95%, d ou r² |

---

## 4. Recomendações Técnicas

### 4.1. Classificação de evidência sugerida

| Recomendação central | Evidência atual | Nível Oxford | GRADE |
|---|---|---|---|
| Proteína 2,0–2,4 g/kg em déficit | Meta-análise (Helms 2014, Morton 2018) | 1a | ⊕⊕⊕⊕ Alto |
| TR preserva MLG em déficit | Meta-análise (Sardeli 2018) | 1a | ⊕⊕⊕⊕ Alto |
| Zona 2 para oxidação lipídica | Fisiologia estabelecida (Brooks 1994) + RCTs | 1b–2b | ⊕⊕⊕○ Moderado |
| Fasted cardio = fed para composição | RCT (Schoenfeld 2014, n=20) | 2b | ⊕⊕○○ Baixo (n pequeno) |
| Psyllium para saciedade/GI | Meta-análise (McRorie 2015) | 1a | ⊕⊕⊕○ Moderado |
| Melatonina para sono em déficit | RCTs heterogêneos | 2b | ⊕⊕○○ Baixo |
| Reverse diet previne rebote | Opinião de expert + modelos | 5 | ⊕○○○ Muito baixo |
| CMM fasting previne SIBO | Fisiologia + observacional | 3b–4 | ⊕⊕○○ Baixo |

### 4.2. Checklist de qualidade metodológica

- [ ] Cada recomendação tem nível de evidência declarado?
- [ ] Tamanho amostral dos RCTs chave está reportado?
- [ ] Populações dos estudos estão especificadas (atletas vs. geral)?
- [ ] Evidências contrastantes são apresentadas (steelmanning)?
- [ ] Conflito de interesse declarado?
- [ ] Extrapolações de modelos animais → humanos estão sinalizadas?
- [ ] "Consenso" está diferenciado de "evidência nível 1a"?

---

## 5. Referências Científicas

| # | Referência | Relevância |
|---|---|---|
| 1 | OCEBM Levels of Evidence Working Group. The Oxford Levels of Evidence 2. Oxford Centre for EBM; 2011. | Classificação de níveis de evidência |
| 2 | Guyatt GH et al. GRADE: an emerging consensus on rating quality of evidence. *BMJ.* 2008;336(7650):924-6. PMID 18436948. | Sistema GRADE de qualidade |
| 3 | Ioannidis JP. Why most published research findings are false. *PLoS Med.* 2005;2(8):e124. PMID 16060722. | Vieses de publicação e reprodutibilidade |
| 4 | Greenhalgh T. How to read a paper: the basics of evidence-based medicine. 6th ed. Wiley; 2019. | Leitura crítica de evidência médica |
| 5 | Hill AB. The environment and disease: association or causation? *Proc R Soc Med.* 1965;58(5):295-300. PMID 14283879. | Critérios de Bradford Hill (plausibilidade biológica) |
| 6 | Higgins JPT et al. Cochrane Handbook for Systematic Reviews of Interventions. 2nd ed. Wiley; 2019. | Padrão-ouro para revisões sistemáticas |
| 7 | Wasserstein RL, Lazar NA. The ASA Statement on p-Values. *Am Stat.* 2016;70(2):129-133. | p-value não mede tamanho de efeito |
| 8 | Munafò MR et al. A manifesto for reproducible science. *Nat Hum Behav.* 2017;1:0021. | Crise de reprodutibilidade científica |
| 9 | Page MJ et al. The PRISMA 2020 statement: an updated guideline for reporting systematic reviews. *BMJ.* 2021;372:n71. PMID 33782057. | PRISMA: transparência em revisões |
| 10 | Sackett DL et al. Evidence-based medicine: what it is and what it isn't. *BMJ.* 1996;312(7023):71-2. PMID 8555924. | Definição de MBE: evidência + experiência + valores |

---

## 6. Conclusão

O protocolo é **metodologicamente superior, com melhoria na v2**: classificação GRADE agora mencionada no Cap. 2, estabelecendo hierarquia de evidência para as recomendações centrais. A base anterior permanece (≥ 125 referências rastreáveis, meta-análises como base, transparência sobre incertezas). As **lacunas residuais** são: GRADE não aplicado a cada recomendação individual, viés de seleção de referências (sem busca sistemática), extrapolação de atletas para população geral e conflito de interesse não declarado. Um metodologista real **reconheceria o avanço** e sugeriria classificação GRADE individual + declaração de CoI.

---

*Análise gerada por IA com base nos 26 capítulos do protocolo e princípios de medicina baseada em evidências. Não substitui revisão por pares formal.*
