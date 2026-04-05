# Taxa de Aprovação por Especialidade — Adulto (18–59 anos)

> **⚠️ CONTEÚDO GERADO INTEGRALMENTE POR INTELIGÊNCIA ARTIFICIAL.**
> Esta classificação simula a avaliação que profissionais de cada especialidade poderiam atribuir ao protocolo de mini-cut para a faixa etária **18–59 anos** (população-alvo). Não substitui avaliação médica real. Destina-se a identificar pontos críticos para aprofundamento e criação de issues.

---

## Metodologia

- **Fonte**: conclusões e pontos negativos dos 30 arquivos `ref-*.md` (versão 2 — pós-resolução de 20 issues)
- **Escala**: 🔴 0–39% (contraindicado) · 🟡 40–69% (condicional) · 🟢 70–100% (aprovado)
- **Ordenação**: menor → maior taxa de aprovação
- **Critérios**: gravidade dos riscos, existência de contraindicações, adaptações necessárias, relação risco-benefício para adultos saudáveis. Esta é a **população-alvo** do protocolo — as taxas refletem o que as conclusões dos 30 ref-*.md efetivamente declaram.
- **Versão**: v2 — após resolução de 20 issues (commits `42b36eb`+). Comparativo com v1 disponível na seção "Evolução v1 → v2".

---

## Resumo Executivo

**Veredicto geral: 🟢 APROVADO**

O protocolo é **aprovado para adultos saudáveis de 18–59 anos** sem comorbidades significativas. Após a resolução de 20 issues na v2 — incluindo Pre-Flight Check (PAR-Q+, exames laboratoriais, triagem psicológica), suplementação expandida (creatina, colágeno+VitC, ferro), refeed semanal, CYP450/polifarmácia e protocolos de segurança (rabdomiólise, regra do pescoço, STOP-Bang) — **27 de 28 especialidades aplicáveis** classificam como 🟢, com apenas 1 especialidade em 🟡 (ginecologia, por LEA operacional ainda abaixo de 30). Nenhuma especialidade classifica como 🔴 para adultos saudáveis.

**Evolução**: v1 tinha 22 🟢 + 8 🟡 → v2 tem 27 🟢 + 1 🟡 (7 especialidades migraram de 🟡 para 🟢).

---

## Tabela de Aprovação

| # | Especialidade | Taxa v2 | v1 | Veredicto | Justificativa | Lacunas residuais |
|---|---|---|---|---|---|---|
| 1 | Ginecologia | 60% | 45% | 🟡 | Gestação/lactação agora contraindicação absoluta (Cap. 1). LEA advertido com fórmula e limiar ≥ 30 (Cap. 1). **Lacunas**: LEA operacional ~17 ainda abaixo de 30, ACO mascara AHF, SOP/climatério sem adaptação, TTC não explicitamente mencionado. | LEA ~17, ACO, SOP, climatério, TTC |
| 2 | Medicina Esportiva | 70% | 50% | 🟢 | ✅ PAR-Q+ obrigatório (Seção 7.0), rabdomiólise documentada (7.3), LEA advertido com fórmula. **Lacunas**: LEA operacional ainda baixo sem ajuste calórico, FMS ausente, termorregulação ignorada, retorno pós-interrupção inexistente. | LEA operacional, FMS, termorregulação |
| 3 | Psiquiatria | 70% | 55% | 🟢 | ✅ Triagem PHQ-9/GAD-7/EAT-26 obrigatória (Seção 7.0) com critérios de exclusão. **Lacunas**: ISRS + ↓ triptofano não alertado, abandono de psicotrópicos, TOC alimentar, BDD não triado, cafeína em TAG. | ISRS, abandono fármacos, TOC, BDD |
| 4 | Psicologia Clínica | 72% | 55% | 🟢 | ✅ EAT-26 obrigatório (Seção 7.0), TCC integrada (Cap. 17.7: descentração, EPR, análise funcional), alternativa à pesagem para risco sub-clínico. **Lacunas**: contagem calorias como obsessão, exercício compulsivo, fotos de progresso, suporte social. | Contagem calorias, exercício compulsivo |
| 5 | Cardiologia | 75% | 60% | 🟢 | ✅ Screening CV no Pre-Flight Check (ECG + ergométrico para > 40), QTc documentado (Seção 15.7). **Lacunas**: PA ortostática sem protocolo, betabloqueador+termogênico, isquemia silenciosa, HRV não monitorada. | PA ortostática, betabloqueador, HRV |
| 6 | Endocrinologia | 75% | 60% | 🟢 | ✅ TSH+T4L obrigatórios (Seção 7.0), testosterona/estradiol por subgrupo, refeed semanal documentado (Seção 2.2), polifarmácia endócrina coberta (15.8). **Lacunas**: cortisol sem monitoramento, orexina subexplorada, HOMA-IR não exigido. | Cortisol, orexina, HOMA-IR |
| 7 | Nutrologia | 75% | 60% | 🟢 | ✅ Painel laboratorial pré-protocolo (hemograma, ferritina, creatinina, TSH, glicemia + subgrupos), hipoglicemiantes cobertos (15.8), variantes dietéticas (10.3). **Lacunas**: classificação LCD/VLCD ausente, colelitíase, esteatose transitória, pré-albumina/D/B12 não obrigatórios. | VLCD, colelitíase, esteatose |
| 8 | Nutrição Clínica | 78% | 65% | 🟢 | ✅ Variantes dietéticas para celíacos/APLV/veganos (Cap. 10.3), ferritina pré-protocolo, ferro suplementar se < 30 (Cap. 6.3), absorção > 6h pós-exercício. **Lacunas**: Ca, Zn, K abaixo do AI, complexo B possivelmente insuficiente. | Ca, Zn, K adequação |
| 9 | Fisiologia do Exercício | 78% | 75% | 🟢 | Refeed semanal documentado (Seção 2.2), creatina prescrita (Cap. 6.3). **Lacunas avançadas**: resistência anabólica não quantificada, distinção lipólise/oxidação, FATmax individual. | FATmax, resistência anabólica |
| 10 | Gastroenterologia | 78% | 75% | 🟢 | Hiperuricemia/gota abordada (Cap. 9), variantes dietéticas incluídas (Cap. 10.3). **Lacunas**: triagem H. pylori/DII/SII, algoritmo diarreico, probióticos, gastroparesia funcional. | Triagem GI, probióticos |
| 11 | Metodologia Científica | 78% | 70% | 🟢 | ✅ GRADE mencionado no Cap. 2 para hierarquia de evidência. **Lacunas**: GRADE não aplicado individualmente a cada recomendação, viés de seleção, extrapolação atletas→geral, CoI não declarado. | GRADE individual, viés, CoI |
| 12 | Neurociência | 78% | 75% | 🟢 | TCC integrada (Cap. 17.7), triagem neurocomportamental (PHQ-9/GAD-7). **Lacunas**: ↓ serotonina por ↓ triptofano/LNAA, função cognitiva D1–D3, neuroplasticidade maladaptativa (rebote). | Serotonina, cognição, rebote |
| 13 | Hematologia | 80% | 70% | 🟢 | ✅ Hemograma + ferritina obrigatórios (Seção 7.0), ferro suplementar + estratégia hepcidina (Cap. 6.3). **Lacunas**: pseudoanemia dilucional, hemoconcentração, VCM/reticulócitos não exigidos. | Pseudoanemia, hemoconcentração |
| 14 | Nefrologia | 82% | 70% | 🟢 | ✅ Creatinina + RAC no Pre-Flight Check, rabdomiólise documentada (7.3), gota coberta (Cap. 9). **Lacunas**: creatina confundindo creatinina, ácido-base em cetose, nefrotoxicidade suplementos. | Creatina/creatinina, ácido-base |
| 15 | Hepatologia | 82% | 75% | 🟢 | ✅ CYP2E1 documentado (Seção 15.8), paracetamol "nunca em jejum", dose máx 2 g/dia. **Lacunas**: esteatose transitória não explicada, hepatotoxicidade suplementos, hepatite crônica (TGO/TGP por subgrupo, não obrigatório para todos). | Esteatose transitória, hepatite crônica |
| 16 | Imunologia | 82% | 75% | 🟢 | ✅ Regra do pescoço incluída (Seção 7.2), colágeno+VitC peri-exercício (Cap. 6.3). **Lacunas**: open window ampliada, ↓ IgA salivar, cortisol crônico, glutamina. | Open window, IgA, cortisol |
| 17 | Ortopedia | 82% | 75% | 🟢 | ✅ Colágeno 15g + VitC 500mg peri-exercício prescrito (Cap. 6.3, protocolo Shaw 2017), creatina para proteção óssea. **Lacunas**: avaliação musculoesquelética pré, fratura de estresse, aquecimento. | Avaliação pré, fratura estresse |
| 18 | Educação Física | 82% | 80% | 🟢 | ✅ PAR-Q+ obrigatório (Seção 7.0). RPE/RIR, volume dose-resposta, "na dúvida, faça menos". **Lacunas**: FMS, aquecimento específico TR, cadência/respiração. | FMS, aquecimento |
| 19 | Reumatologia | 82% | 80% | 🟢 | Gota/hiperuricemia abordada (Cap. 9), ácido úrico nos exames por subgrupo. **Lacunas**: CHO mínimo para gota não definido, fibromialgia/LES sem adaptação, imunossupressores. | CHO gota, fibromialgia, LES |
| 20 | Dermatologia | 82% | 80% | 🟢 | Ferritina no painel pré-protocolo, ferro suplementar (Cap. 6.3). **Lacunas**: barreira cutânea se gordura insuficiente, fotodano outdoor, dermatite suor. | FPS outdoor, eflúvio telógeno |
| 21 | Farmacologia | 85% | 75% | 🟢 | ✅ CYP2E1 documentado (15.8), CYP450 como framework de polifarmácia, paracetamol "nunca em jejum". **Lacunas**: polimorfismos CYP1A2 (metabolizadores lentos), termogênico por nome comercial. | CYP1A2, termogênico |
| 22 | Nutrição Esportiva | 85% | 75% | 🟢 | ✅ Creatina 3–5 g/dia prescrita (Cap. 6.3), refeed semanal documentado (Seção 2.2), colágeno+VitC. **Lacunas**: periodização CHO peri-workout, timing proteico jejum (caseína/leucina). | CHO peri-TR, timing proteico |
| 23 | Pneumologia | 85% | 80% | 🟢 | ✅ SAHOS triada via STOP-Bang (Cap. 9). **Lacunas**: AIE não triada, dispneia não em sinais de parada, ar indoor. | AIE, dispneia |
| 24 | Toxicologia | 85% | 80% | 🟢 | ✅ Paracetamol "nunca em jejum" + CYP2E1 documentado. **Lacunas**: suplementos não certificados (12–25%), VitD marginal ao UL, pre-workouts, POPs. | Certificação suplementos, VitD |
| 25 | Oftalmologia | 85% | 85% | 🟢 | Sem alterações: neutro a benéfico. **Lacunas**: PIO em glaucoma, olho seco, UV outdoor, descolamento retina míopes. | Glaucoma, UV, miopia alta |
| 26 | Medicina do Sono | 88% | 80% | 🟢 | ✅ Cafeína corte 14h com fontes ocultas (Cap. 16), SAHOS triada via STOP-Bang (Cap. 9). **Lacunas**: fome noturna, timing TR vs. sono, Power Nap. | Fome noturna, timing TR |
| 27 | Otorrinolaringologia | 88% | 85% | 🟢 | ✅ SAHOS triada via STOP-Bang (Cap. 9). **Lacunas**: RLF não mencionada, vertigem hipoglicemia vs. vestibular. | RLF, vertigem |
| 28 | Medicina Nuclear | 90% | 85% | 🟢 | ✅ DXA pré/pós recomendada (Seção 11.1) com padronização, BIA padronizada. **Lacunas**: refeed pré-medição BIA não sugerido. | Refeed pré-BIA |
| 29 | Geriatria | N/A | N/A | — | Faixa etária oposta (≥ 60). Para adultos 50–59: atenção a transição. | Transição 50–59 → geriatria |
| 30 | Pediatria | N/A | N/A | — | Faixa etária oposta (< 18). Para adultos 18–25: protocolo aplica-se normalmente. | — |

---

## Evolução v1 → v2

### Migração de classificação

| Especialidade | v1 | v2 | Δ | Issues resolvidas |
|---|---|---|---|---|
| Ginecologia | 🟡 45% | 🟡 60% | +15 | Gestação/lactação contraindic., LEA fórmula, RED-S warning |
| Medicina Esportiva | 🟡 50% | 🟢 70% | +20 | PAR-Q+, rabdomiólise, LEA fórmula |
| Psiquiatria | 🟡 55% | 🟢 70% | +15 | Triagem PHQ-9/GAD-7/EAT-26 |
| Psicologia Clínica | 🟡 55% | 🟢 72% | +17 | EAT-26, TCC integrada, alternativa pesagem |
| Cardiologia | 🟡 60% | 🟢 75% | +15 | Screening CV, QTc (Se\u00e7\u00e3o 15.7) |
| Endocrinologia | 🟡 60% | 🟢 75% | +15 | TSH/T4L, testosterona, refeed, polifarmácia |
| Nutrologia | 🟡 60% | 🟢 75% | +15 | Lab pré-protocolo, hipoglicemiantes |
| Nutrição Clínica | 🟡 65% | 🟢 78% | +13 | Variantes dietéticas, ferritina, ferro |

### Adições ao protocolo que impactaram múltiplas especialidades

| Adição | Capítulo | Especialidades beneficiadas | Impacto |
|---|---|---|---|
| **Pre-Flight Check (Seção 7.0)** | Cap. 7 | Cardiologia, Endocrinologia, Hematologia, Nefrologia, Nutrologia, Psiquiatria, Psicologia, Medicina Esportiva | +10–20% em 8 especialidades |
| **Triagem psicológica (PHQ-9/GAD-7/EAT-26)** | Cap. 7 | Psiquiatria, Psicologia, Neurociência | +15–17% em 2 especialidades |
| **Creatina + Colágeno + Ferro (Seção 6.3)** | Cap. 6 | Nutrição Esportiva, Ortopedia, Hematologia, Dermatologia | +5–10% em 4 especialidades |
| **CYP450/CYP2E1 (Seção 15.8)** | Cap. 15 | Farmacologia, Hepatologia, Toxicologia, Endocrinologia | +7–10% em 4 especialidades |
| **STOP-Bang/SAHOS (Cap. 9)** | Cap. 9 | Medicina do Sono, Pneumologia, ORL | +5–8% em 3 especialidades |
| **Refeed semanal (Seção 2.2)** | Cap. 2 | Endocrinologia, Nutrição Esportiva, Fisiologia | +3–5% em 3 especialidades |
| **Rabdomiólise + Regra do Pescoço** | Cap. 7 | Medicina Esportiva, Nefrologia, Imunologia | +5–12% em 3 especialidades |
| **DXA + BIA padronização (Seção 11.1)** | Cap. 11 | Medicina Nuclear | +5% |

---

## Pontos Críticos Residuais — Classificação por Severidade

### 🔴 Bloqueantes (impedem aplicação sem resolução)

| # | Ponto crítico | Especialidades envolvidas | Subgrupo afetado | Status |
|---|---|---|---|---|
| 1 | **LEA ~17 kcal/kg MLG — mulheres em RED-S** | Ginecologia, Medicina Esportiva | Todas as mulheres | ⚠️ Advertido mas estrutura calórica não modificada |

> **Nota v2**: Gestação e lactação agora são contraindicações absolutas (Cap. 1). LEA fórmula e limiar ≥ 30 documentados. Contudo, o déficit operacional permanece ~17 kcal/kg MLG para mulheres típicas, o que está abaixo do limiar de segurança.

### 🟡 Condicionais (requerem atenção residual)

| # | Ponto crítico | Especialidades | Subgrupo | Status v2 |
|---|---|---|---|---|
| 1 | ACO mascara AHF; SOP/climatério sem adaptação | Ginecologia | Mulheres com ACO, SOP, climatério | Não resolvido |
| 2 | ISRS + ↓ triptofano; risco de abandono de psicotrópicos | Psiquiatria | Uso de psicotrópicos | Não resolvido |
| 3 | Classificação LCD/VLCD por kcal/kg ausente | Nutrologia | Todos (especialmente > 100 kg) | Não resolvido |
| 4 | Colelitíase por perda rápida (> 1,5 kg/semana) | Nutrologia, Gastroenterologia | Todos | Não resolvido |
| 5 | Contagem de calorias como gatilho obsessivo | Psicologia | Subgrupo com TAs sub-clínicos | Parcialmente mitigado (TCC em Cap. 17.7) |
| 6 | Cortisol sem monitoramento durante o protocolo | Endocrinologia | Todos | Não resolvido |
| 7 | Polimorfismos CYP1A2 (metabolizadores lentos cafeína) | Farmacologia | 15–20% da população | Não resolvido |

### 🟢 Melhorias residuais (otimizações que elevariam qualidade)

| # | Ponto crítico | Especialidades | Impacto |
|---|---|---|---|
| 1 | GRADE individual por recomendação | Metodologia | Transparência evidencial |
| 2 | Periodização CHO peri-workout | Nutrição Esportiva, Fisiologia | Performance TR |
| 3 | Caseína pré-sono + leucina ao acordar | Nutrição Esportiva | Proteção MLG noturna |
| 4 | Probióticos / alimentos fermentados | Gastroenterologia | Microbiota durante restrição |
| 5 | FMS (Functional Movement Screen) pré-protocolo | Educação Física, Ortopedia | Prevenção de lesões |
| 6 | Suplementos com selo NSF/Informed Sport | Toxicologia | Prevenção de contaminação |
| 7 | Power Nap como estratégia de recuperação | Medicina do Sono | Recuperação diurna |
| 8 | Declaração de conflito de interesse (CoI) | Metodologia | Transparência |

---

## Issues Resolvidas na v2 (20 issues)

| # | Título original | Prioridade | Capítulos editados | Status |
|---|---|---|---|---|
| 1 | Gestação/lactação contraindicação absoluta | Critical | Cap. 1 | ✅ Resolvido |
| 2 | LEA/RED-S advertência explícita | Critical | Cap. 1 | ✅ Resolvido (parcial — advertido mas déficit não ajustado) |
| 3 | Screening CV para > 40 sedentários | High | Cap. 7 (Seção 7.0) | ✅ Resolvido |
| 4 | QTc como fator de risco | High | Cap. 15 (Seção 15.7) | ✅ Resolvido |
| 5 | Triagem de TAs (EAT-26) | High | Cap. 7 (Seção 7.0) | ✅ Resolvido |
| 6 | Painel hormonal basal | High | Cap. 7 (Seção 7.0) | ✅ Resolvido |
| 7 | Creatinina + RAC pré-protocolo | High | Cap. 7 (Seção 7.0) | ✅ Resolvido |
| 8 | Hemograma + ferritina pré-exame | High | Cap. 7 (Seção 7.0) | ✅ Resolvido |
| 9 | PAR-Q+ triagem pré-participação | High | Cap. 7 (Seção 7.0) | ✅ Resolvido |
| 10 | CYP450 e polifarmácia | Medium | Cap. 15 (Seção 15.8) | ✅ Resolvido |
| 11 | Paracetamol em jejum | Medium | Cap. 15 (Seção 15.8) | ✅ Resolvido |
| 12 | Variantes dietéticas (celíacos, APLV, veganos) | Medium | Cap. 10 (Seção 10.3) | ✅ Resolvido |
| 13 | STOP-Bang para SAHOS | Medium | Cap. 9 | ✅ Resolvido |
| 14 | Corte de cafeína 14h + fontes ocultas | Medium | Cap. 16 | ✅ Resolvido |
| 15 | Creatina 3–5 g/dia | Low | Cap. 6 (Seção 6.3) | ✅ Resolvido |
| 16 | Refeed semanal (leptina→T3) | Low | Cap. 2 (Seção 2.2) | ✅ Resolvido |
| 17 | Colágeno + VitC peri-exercício | Low | Cap. 6 (Seção 6.3) | ✅ Resolvido |
| 18 | DXA pré/pós + BIA padronização | Low | Cap. 11 (Seção 11.1) | ✅ Resolvido |
| 19 | GRADE classificação de evidência | Low | Cap. 2 | ✅ Resolvido (parcial — mencionado mas não por recomendação) |
| 20 | Regra do pescoço para IVAS | Low | Cap. 7 (Seção 7.2) | ✅ Resolvido |

---

## Nota sobre Subgrupos de Risco dentro de 18–59 anos

| Subgrupo | Especialidades com maior preocupação | Taxa média v2 | v1 |
|---|---|---|---|
| Mulheres em idade fértil | Ginecologia (60%), Hematologia (80%), Endocrinologia (75%) | ~72% (🟢) | ~58% (🟡) |
| > 40 anos sedentários | Cardiologia (75%), Medicina Esportiva (70%) | ~73% (🟢) | ~65% (🟡) |
| Doenças reumatológicas | Reumatologia (82% saudável → ~50% com AR/LES/fibro) | ~50% (🟡) | ~45% (🟡) |
| Uso de psicotrópicos | Psiquiatria (70%), Farmacologia (85%) | ~75% (🟢) | ~60% (🟡) |
| DM2 + hipoglicemiantes | Endocrinologia (75%), Nutrologia (75%), Farmacologia (85%) | ~72% (🟢) | ~55% (🟡) |
| Saudável, < 40, sem FR | Todas as 28 especialidades aplicáveis | **~83% (🟢)** | ~78% (🟢) |

---

*Classificação gerada por IA com base nas conclusões de 30 análises especializadas (v2 — pós-resolução de 20 issues). Não substitui avaliação médica presencial.*
