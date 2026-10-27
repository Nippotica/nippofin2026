---
layout: page
title: "FlowState"
description: "How much New York's close tells you about Tokyo, every day"
img: assets/images/gen/projects/flowstatethumb.webp
tags: quant  
related_publications: true
importance: 2
category: Market Signals
date: 2026-05-22
---


> FlowState tells you, every day, how much the S&P 500's close tells you about the Nikkei 225's next session.

**[FlowState in action → click here](https://flowstate.nippotica.com/)**

New York closes a few hours before Tokyo opens. FlowState measures how much of Tokyo's next move was already in New York's close, using Transfer Entropy {% cite schreiber2000measuring %}. Then it gives you one plain answer, from "A lot" to "Nothing reliable."

{% include figure.liquid path="assets/images/gen/projects/flowstatehero2.webp" class="img-fluid rounded" %}

---

### What We Found

- **The flow runs one way.** Since 2017, New York's close has carried information about Tokyo. Tokyo has carried no detectable information back.
- **Its strength changes.** Before August 2024, the link was strong on 68% of trading days. Since then, on 17%.

---

### What Makes It Different

- **One plain answer.** Each day gets a grade from A to Null, with a one-line answer anyone on the desk can read.
- **Checked against chance.** Every reading is compared with shuffled versions of the same data, then passes five reliability checks that set its grade.
- **Adjusted for the yen.** FlowState removes moves that only reflect the yen pushing both markets at once.
- **Full history.** Browse any month since 2017, or major events such as the 2020 COVID crash and the 2024 yen carry unwind.

---

### Use Cases

- Gauge how much weight New York's close deserves in your Tokyo morning view.
- Check whether the US and Japan equity link your models assume still holds.

---

### Methodology

Every day, FlowState asks one question: does knowing New York's close help predict Tokyo's next session, beyond what Tokyo's own recent history already tells you?

It answers with Transfer Entropy, a measure from information theory that detects the direction of information flow without assuming markets behave in any particular way. {% cite dimpfl2018analyzing kuang2021measuring %} Each reading looks back over about one year of trading days.

Validated on the Nikkei 225 and S&P 500 pair, with DAX and S&P 500 under active research. Other pairs, such as HSI, FTSE, and ASX, are available on request, subject to validation.

FlowState is a research measure, not a trading recommendation.

---

### Access

[Need more info? → contact us](mailto:info@nippotica.com)
