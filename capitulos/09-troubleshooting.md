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
on(EVENT.TONTURA_LEVE_ESFORCO) -> handler: Erro 04 (repouso ativo, delivery)

// -- SEVERITY: HIGH --
on(EVENT.PALPITACAO)     -> handler: ABORT(estimulantes), elevar kcal ao teto

// -- SEVERITY: CRITICAL -- ABORT PROTOCOL --
on(EVENT.TONTURA_GRAVE)  -> handler: ABORT(deficit), carb simples imediato
on(EVENT.VISAO_TURVA)    -> handler: ABORT(deficit), carb simples imediato
on(EVENT.DOENCA)         -> handler: switch_to(MAINTENANCE ~2400 kcal)
on(EVENT.PLATO_>14DIAS)  -> handler: NOP -- ruido esperado, nao reagir
```

```mermaid
flowchart TD
    S([Sintoma Detectado]) --> SEV{Severidade?}
    SEV -->|LOW| L[Xerostomia / Sede]
    SEV -->|MEDIUM| M[Grelina / Brain Fog / Insonia / Tontura Leve]
    SEV -->|HIGH| H[Palpitacao]
    SEV -->|CRITICAL| C[Tontura Grave / Visao Turva / Doenca]

    L --> L1([Goles curtos + sal + goma])
    M --> M1([Agua c/ gas + distracao + sal sublingual + repouso ativo])
    H --> H1([ABORT estimulantes + elevar kcal])
    C --> C1([ABORT deficit + carb imediato])
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

### Erro 04: Sensação Intermitente de 10% de Desmaio em Esforços Cotidianos (Tontura Leve)
É a sensação transitória e leve de um "quase desmaio a 10%" gerada pelo esforço físico não-programado (como caminhar até o mercado, ou longos trajetos a pé) sob efeito de vasoconstritores (cafeína) e déficit agressivo. [web:52][web:68]

A fisiologia envolve três fatores simultâneos:

1. **Gap funcional de substrato (transição glucolítica→lipolítica):** A cafeína inibe a fosfodiesterase e eleva o AMPc, ativando a lipase hormônio-sensível (HSL) e acelerando a liberação de ácidos graxos livres como combustível muscular. [web:72][web:73] O problema é que o cérebro não oxida ácidos graxos diretamente — depende de glicose ou, após cetoadaptação plena (que exige dias a semanas de restrição), de corpos cetônicos. [web:11] Com glicogênio hepático reduzido e cetoadaptação ainda incompleta, forma-se um gap transitório de substrato cerebral que se torna sintomático apenas sob demanda repentina (esforço físico).
2. **Redistribuição circulatória ortostática:** Ao caminhar, volume sanguíneo é redistribuído para a musculatura periférica. Com o volume plasmático levemente reduzido pelo déficit e pela sudorese basal, o barorrefletor compensa com mais lentidão que o habitual. [web:52]
3. **Vasoconstrição cerebral pelo estimulante:** Via bloqueio competitivo dos receptores de adenosina A1 e A2A, a cafeína reduz o fluxo sanguíneo cerebral e atenua a vasodilatação compensatória, agravando a hipoperfusão transitória durante o esforço. [web:72]

A tontura não é um sinal de dano — é o sistema avisando que a transição metabólica não cobre os dois destinos (pernas em movimento + cérebro) ao mesmo tempo. **Em repouso, a demanda muscular cai, a lipólise cobre o metabolismo basal e o gap desaparece. O repouso resolve porque o gatilho é o esforço, não o protocolo em si.** Se o repouso resolver completamente o sintoma, não é necessário ajustar o estimulante ou quebrar o jejum.

**O Patch de Correção:**
* **Abortar a atividade física secundária imediatamente:** Sente-se ou deite-se. O sintoma cessa rapidamente em repouso. O corpo simplesmente não tem "bateria" suficiente para suprir os músculos das pernas e o cérebro simultaneamente nestas condições adversas.
* **Terceirização e Conveniência (Conservação de NEAT):** Substitua idas a pé ao mercado ou farmácia por aplicativos de delivery (Ifood, Rappi, etc.). Trate essas ferramentas como recursos valiosos de autopreservação energética, não como luxo desnecessário.
* **Repouso Ativo ("Cérebro Ligado, Corpo Desligado"):** Com o corpo em repouso absoluto induzido (sentado/deitado) e sob efeito da cafeína, aproveite esse momento para "jogar a energia para a mente", dedicando-se à leitura, estudos, trabalho remoto assistido ou processamento criativo.
* **Aporte Hídrico de Emergência (Auxílio Salino):** Opcionalmente, utilize um copo de água com uma pitada sublingual de sal para elevar levemente o volume plasmático e contornar efeitos da hipotensão ortostática provocada pelo movimento repentino.
