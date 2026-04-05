## 5. Dinâmica do Exercício (Mecânica e Hardware)

### 5.1. Zona de Frequência Cardíaca (Gestão de Esforço)
O objetivo na esteira é manter a **Zona 2**. A faixa **111 a 129 bpm** pode funcionar como referência inicial para o perfil atual, mas não é universal. Esse é o ponto de eficiência onde o corpo usa predominantemente o oxigênio para metabolizar gordura, sem gerar pico de estresse no sistema nervoso central. [web:66][web:20]

Para personalizar de forma simples, use uma versão prática da fórmula de Karvonen:

```
FC_alvo = (FC_max - FC_repouso) * intensidade + FC_repouso

intensidade da Zona 2: 0,60 a 0,70
FC_max estimada: 220 - idade
```

Checklist rápido de calibração:
1. Meça FC de repouso ao acordar por 3 dias e use a média.
2. Calcule a faixa alvo da Zona 2 pela fórmula.
3. Use RPE como validação: fala em frases completas, sem ofegar.
4. Se o sensor divergir >10 bpm, priorize cinta torácica ou RPE. [web:70][web:71]

### 5.2. O Loop de Ritmo (Caminhada/Trote)
* **0 a 5 min:** Caminhada leve para lubrificação articular. O aquecimento eleva gradualmente a temperatura tecidual e melhora a eficiência mecânica. [web:5]
* **5 a 40 min:** Alternar **2 minutos de caminhada rápida** com **1 minuto de trote bem leve**. Essa gestão intervalada impede que a frequência cardíaca saia da Zona 2 e torna o exercício mentalmente mais sustentável. [web:30]
* **40 a 45 min:** Desaceleração gradual.

> **Dica:** Usar música a 120–140 BPM durante o loop principal pode melhorar o humor e reduzir a percepção de esforço sem custo adicional. Veja os detalhes e a evidência no [Capítulo 12](12-musica-e-treino.md).

### 5.3. Atenção ao Equipamento (Tênis Categoria "Max Amortecimento" com Placa)
A presença de espumas premium (como PEBA) e a placa propulsora (seja nylon ou carbono) reduzem o estresse mecânico no chassi articular. Porém, o efeito de impulsão (bounce) pode induzir um ritmo mais acelerado do que o planejado. Monitore sempre o painel da esteira e o smartwatch para garantir que a frequência cardíaca não ultrapasse o teto da Zona 2.

> **Nota:** Para pessoas com limitações físicas que impeçam a prática de exercício aeróbico (lesão articular, pós-operatório, etc.), consulte o [Capítulo 14](14-exercicio-e-dieta.md) para a variante sem exercício e alternativas de baixo impacto.

### 5.4. Discrepância entre Sensores (Relógio vs Esteira)

É comum observar diferenças de 10 a 15 bpm entre o smartwatch e o painel da esteira --- por exemplo, o relógio marca 136 bpm enquanto a esteira indica 122 bpm. Essa divergência não é defeito: cada dispositivo usa uma tecnologia diferente para estimar a frequência cardíaca, e cada uma tem suas vulnerabilidades.

**Sensor óptico do relógio (PPG --- fotopletismografia):** LEDs verdes iluminam a pele do pulso e um fotodiodo mede a variação de volume sanguíneo a cada batimento. As principais fontes de erro são artefatos de movimento do braço durante a caminhada/trote, ajuste frouxo da pulseira, vasoconstrição periférica (comum em ambiente climatizado) e acúmulo de suor sob o sensor. Em estudo com 60 voluntários de perfis diversos, o Apple Watch obteve erro mediano de 2,0% contra ECG, mas dispositivos menos precisos chegaram a 6,8%, e a acurácia caiu significativamente durante caminhada comparada a ciclismo. [web:70]

**Sensor de contato da esteira (bioimpedância):** As placas metálicas no corrimão captam o sinal elétrico cardíaco pelas palmas das mãos. O problema é que a leitura exige contato firme e contínuo --- mãos suadas, toque intermitente ou pressão irregular geram subnotificação ou ausência de leitura. Além disso, a resposta é mais lenta e o algoritmo da esteira costuma aplicar suavização agressiva, atrasando variações reais.

**Hierarquia de confiança (do mais ao menos preciso):**

1. **Cinta torácica** (tipo Polar H7): correlação de 0,98 com ECG clínico --- virtualmente idêntica ao padrão-ouro. [web:71]
2. **Smartwatch de alta precisão** (Apple Watch): correlação de 0,96 --- excelente, mas degrada em intensidades muito altas (acima de ~160 bpm, correlação pode cair abaixo de 0,70). [web:71]
3. **Outros smartwatches** (Fitbit, Garmin, TomTom): correlação em torno de 0,89 --- aceitável, mas com outliers frequentes. Alguns superestimam em até 6 bpm em média. [web:71]
4. **Sensores de contato da esteira:** Sem calibração padronizada; dependem do contato manual e são os menos confiáveis em regime de exercício contínuo.

**Regra prática para o protocolo:** quando a diferença entre relógio e esteira ultrapassar 10 bpm, use a **percepção subjetiva de esforço (RPE)** como desempate. Na Zona 2, você deve conseguir manter uma conversa com frases completas, embora com leve esforço. Se estiver ofegante e consegue falar apenas palavras soltas, provavelmente está acima da Zona 2 independentemente do que qualquer sensor indique. Para quem treina com frequência e quer eliminar a dúvida, investir em uma cinta torácica (custo acessível) encerra a discussão com precisão clínica.
