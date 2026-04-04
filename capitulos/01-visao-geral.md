## 1. Visão Geral e Estratégia Adotada
Este documento descreve um protocolo de **mini-cut estruturado e temporário**, planejado para uma janela curta de férias. O objetivo é reduzir a gordura corporal através de um déficit calórico otimizado, sem transformar o processo em um teste de resistência extrema. Dietas com ingestão muito baixa de calorias (VLCD) exigem cautela e devem ser aplicadas apenas em contextos específicos e por períodos curtos; a meta não é "sofrer o máximo possível", mas sim encontrar a faixa de maior eficiência que ainda preserve a sua saúde, adesão e massa magra. [web:52][web:68]

O ambiente de férias é o cenário ideal pois reduz a carga de estresse cognitivo (entregas de software) e melhora a previsibilidade do ciclo circadiano (sono e rotina).

### 1.1. Faixa Calórica Operacional (Design Flexível)
A tabela alimentar atual opera em uma janela de aproximadamente 978 kcal a 1.284 kcal (dependendo do uso do azeite). Por estar abaixo da sua Taxa Metabólica Basal (TMB), esse nível de ingestão gera uma "dívida técnica" fisiológica. Por isso, a faixa mais baixa **não é uma meta diária obrigatória**. Nos dias em que o desgaste físico for maior, a margem superior (com o azeite) deve ser utilizada para garantir a sustentabilidade do sistema. [web:52][web:68]

### 1.2. Projeção de Execução
* **Taxa Metabólica Basal (TMB):** ~1.647 kcal
* **Gasto Total Diário Estimado (TDEE):** ~2.400 kcal
* **Janela de Consumo Sugerida:** ~1.200 kcal (Ajustável conforme feedback do corpo)
* **Meta de 30 dias:** Perda de gordura associada a uma queda inicial de retenção hídrica. A massa oxidada é eliminada naturalmente como CO2 (respiração) e H2O (urina/suor). [web:55][web:59]

### 1.3. Telemetria e Monitoramento de Resultados
O progresso em um déficit extremo nunca é puramente linear devido à retenção hídrica e flutuações do cortisol.
* **Pesagem:** A recomendação é subir na balança apenas **1 vez por semana**, sempre no mesmo dia, em jejum e após ir ao banheiro. Pesagens diárias geram ruído nos dados (falso "platô").
* **Fotografia e Medidas:** As fotos de frente/perfil semanais costumam ser indicadores melhores que a balança na faixa de 15 a 20 dias, pois a inflamação tecidual diminui antes do peso na balança refletir grandes quedas contínuas.

### 1.4. Contrato da API (Especificação Técnica do Protocolo)
O protocolo opera como uma função com entradas controladas e saídas esperadas. Se as entradas estiverem fora das faixas especificadas, as saídas são imprevisíveis.

```
Protocol.run(day: 1..30) {

  // -- ENTRADAS (Parametros Obrigatorios) --
  inputs:
    calories:    978..1284 kcal/dia   // margem operacional (ver Secao 1.1)
    protein:     >= 100g/dia          // eixo anti-catabolico (ver Secao 2)
    water:       ad libitum           // sensor: cor da urina (amarelo claro)
    exercise:    45 min/dia Zona 2    // 111-129 bpm (ver Secao 5)
    sleep:       >= 7h/noite          // janela de reparo do hardware

  // -- SAIDAS ESPERADAS --
  expected_outputs:
    fat_loss:       0.5-1.0% peso corporal/semana
    lean_mass:      preservada (delta ~ 0)
    energy_level:   degradado, porem funcional
    mood:           variavel (dias 3-7 sao os piores)

  // -- CODIGOS DE ERRO (ver Secao 9) --
  error_codes:
    E01_XEROSTOMIA:     severity=LOW   -> patch(sal, goma, respiracao nasal)
    E02_GRELINA_SPIKE:  severity=MED   -> patch(agua c/ gas, distracao, fibras)
    E03_BRAIN_FOG:      severity=MED   -> patch(sal sublingual, palatinose)
    E04_PALPITACAO:     severity=HIGH  -> ABORT(estimulantes) + elevate(kcal)
    E05_TONTURA_GRAVE:  severity=CRIT  -> ABORT(deficit) + carb_simples
    E06_DOENCA:         severity=CRIT  -> switch_to(MAINTENANCE ~2400 kcal)
}
```

### 1.5. Tratamento de Exceções (Falhas Críticas e Contingências)
Se o sistema entrar em modo de falha (doença grave como gripe forte, virose estomacal ou lesão articular impeditiva):
* **Corte Imediato do Déficit:** O corpo precisa de nutrientes para o reparo imunológico. Suba a ingestão para perto do Gasto Total (~2.400 kcal) pelo número de dias em que estiver doente.
* **Zero Estimulantes:** Suspender termogênico, pré-treino ou cafeína durante quadros inflamatórios agudos para não mascarar a fadiga e forçar um chassi imune debilitado. A recuperação do "hardware principal" é a prioridade absoluta.
