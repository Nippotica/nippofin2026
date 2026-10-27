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


> Every day, FlowState measures how much the S&P 500's close helps predict the Nikkei 225's next session.

**[FlowState in action → click here](https://flowstate.nippotica.com/)**

New York closes a few hours before Tokyo opens. FlowState measures how much of Tokyo's next move was already in New York's close, using Transfer Entropy {% cite schreiber2000measuring %}. Then it gives you one plain answer, from "A lot" to "Nothing reliable."

{% include figure.liquid path="assets/images/gen/projects/flowstatehero2.webp" class="img-fluid rounded" %}

---

### Insights

- **The flow runs one way.** Since 2017, New York's close has carried information about Tokyo. Tokyo has carried no detectable information back.
- **Its strength changes.** Before August 2024, the link was strong on 68% of trading days. Since then, on 17%.

---

### Why FlowState

- **It sees direction.** Correlation tells you two markets move together. It can't tell you which one moves first. FlowState can, and on every day with a detectable link since 2017, the answer has been New York.
- **It tells you when to ignore it.** Most signals always have something to say. FlowState says "Nothing reliable" when the data doesn't support a reading. A weak day is labeled as one.
- **It takes the yen out.** When the yen moves, both markets can move with it. FlowState strips that shared push out, so the reading reflects what New York itself is telling Tokyo.
- **It shows its track record.** Every reading since 2017 is one click away, with major shocks marked, from the 2020 COVID crash to the 2024 yen carry unwind.

---

### Use Cases

- **The overnight question.** The S&P 500 fell 2% overnight. Will Tokyo follow? FlowState tells you how much New York's close has been worth for Tokyo lately. On an "A lot" day, New York is a reliable guide. On a "Very little" day, look to local drivers instead.
- **Testing your model's assumptions.** Many cross-market models assume Tokyo takes its cue from New York. FlowState shows, day by day since 2017, when that held and when it broke down.
- **Reviewing a shock.** After a crash or a policy surprise, see how tightly Tokyo was tied to New York going in. The 2024 yen carry unwind hit when the link was still strong.
- **Briefing a committee.** One plain answer per day, with a grade behind it. No statistics lesson required.

---

### Methodology

Every day, FlowState asks one question: does knowing New York's close help predict Tokyo's next session, beyond what Tokyo's own recent history already tells you?

It answers with Transfer Entropy, a measure from information theory that detects the direction of information flow without assuming markets behave in any particular way. {% cite dimpfl2018analyzing kuang2021measuring %} Each reading looks back over about one year of trading days.

Validated on the Nikkei 225 and S&P 500 pair, with DAX and S&P 500 under active research. Other pairs, such as HSI, FTSE, and ASX, are available on request, subject to validation.

FlowState is a research measure, not a trading recommendation.

---

### Access

[Need more info? → contact us](mailto:info@nippotica.com)
