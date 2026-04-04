## 9. Troubleshooting Comum (Resolução de Erros)

Um déficit calórico severo (~900 kcal) gera alertas fisiológicos. O corpo tenta frear o gasto energético (downregulation) e aumentar a fome (upregulation de grelina). [web:60]

*As recomendações abaixo são orientações práticas para manter a adesão; não constituem diretrizes clínicas formais.*

### 9.0. Event Map (Mapa de Eventos do Sistema)
O corpo emite "eventos" (sintomas) e o protocolo define "handlers" (respostas). A severidade determina a ação:

```
// -- SEVERITY: LOW --
on(EVENT.XEROSTOMIA)     -> handler: Erro 01 (goles curtos, sal, goma)
on(EVENT.SEDE_EXCESSIVA) -> handler: checar cor da urina -> ajustar volume

// -- SEVERITY: MEDIUM --
on(EVENT.GRELINA_SPIKE)  -> handler: Erro 02 (agua com gas, distracao 15min)
on(EVENT.BRAIN_FOG)      -> handler: Erro 03 (sal sublingual, reduzir carga)
on(EVENT.INSONIA)        -> handler: antecipar palatinose, cortar cafeina 14h+

// -- SEVERITY: HIGH --
on(EVENT.PALPITACAO)     -> handler: ABORT(estimulantes), elevar kcal ao teto

// -- SEVERITY: CRITICAL -- ABORT PROTOCOL --
on(EVENT.TONTURA_GRAVE)  -> handler: ABORT(deficit), carb simples imediato
on(EVENT.VISAO_TURVA)    -> handler: ABORT(deficit), carb simples imediato
on(EVENT.DOENCA)         -> handler: switch_to(MAINTENANCE ~2400 kcal)
on(EVENT.PLATO_>14DIAS)  -> handler: NOP -- ruido esperado, nao reagir
```

### Erro 01: Sensação de Língua Seca (Xerostomia)
Frequentemente ligada ao uso de termogênicos, respiração bucal no treino e transpiração alta. [web:16]

**O Patch de Correção:**
* **Pequenos goles de água:** Beba goles curtos apenas para "molhar o hardware", espalhando a água pela cavidade oral antes de engolir.
* **Manter a Pitada de Sal:** A oferta de sódio ajuda a reter a hidratação nos tecidos e mucosas.
* **Goma de Mascar (Zero Açúcar):** O ato mecânico de mascar estimula as glândulas salivares sem adicionar calorias ou gerar pico de insulina.
* **Foco na Respiração Nasal:** Priorize puxar o ar pelo nariz durante o cárdio.

### Erro 02: Picos de Fome Aguda (Grelina Alta)
O corpo dispara sinais de alerta exigindo glicose rápida. Costuma ocorrer no final do dia ou pós-treino intenso.

**O Patch de Correção:**
* **Volume Hídrico com Gás:** Ingerir água com gás (300-500ml). A expansão gástrica gera saciedade mecânica temporária.
* **Café/Chá Descafeinado Quente:** Líquidos quentes retardam o esvaziamento gástrico e suprimem levemente o apetite.
* **Distração Cognitiva:** A fome em pico dura de 15 a 20 minutos. Mude de ambiente ou inicie uma tarefa mentalmente exigente até o "aviso do sistema" silenciar.
* **Ajuste de Fibras:** Aumente o volume de folhas escuras na refeição anterior para maximizar a distensão estomacal.

### Erro 03: Letargia e "Brain Fog" Súbito
A queda de glicose no sangue (hipoglicemia leve) pode deixar o raciocínio lento e o corpo pesado (sensação de "bateria a 5%").

**O Patch de Correção:**
* **Sódio de Ação Rápida:** Colocar uma pequena pitada de sal sob a língua. A absorção sublingual de sódio eleva levemente a pressão arterial, clareando o "brain fog".
* **Redução de Carga Cognitiva:** Evite tomar decisões complexas durante a janela de letargia.
* **Alavanca da Palatinose (Se Prescrita):** Utilize a suplementação de carboidrato de baixo índice glicêmico antes do treino para garantir suporte basal ao cérebro (ver Seção 6.2).
* **Avaliação de Aborto de Missão:** Se a letargia vier acompanhada de tontura grave ou visão turva, aborte o déficit do dia e consuma um carboidrato simples (ver Seção 7 para sinais formais de interrupção). A segurança do hardware vem antes do protocolo.
