---
layout: page
title: "FlowState"
description: "How closely Tokyo follows New York, tracked since 2017"
img: assets/images/gen/projects/flowstatethumb.webp
tags: quant  
related_publications: true
importance: 2
category: Market Signals
date: 2026-05-22
---


> For years, Tokyo followed New York closely. Since August 2024, barely. FlowState tracks that link, day by day, back to 2017.

**[FlowState in action → click here](https://flowstate.nippotica.com/)**

New York closes a few hours before Tokyo opens. FlowState measures how much New York's close helps predict Tokyo's next move, using Transfer Entropy {% cite schreiber2000measuring %}. Each reading covers the past year of trading and gets a grade, from Strong to No credible lead.

FlowState is a research and data product. It shows how closely Tokyo follows New York over time. It is not a daily trading signal.

{% include figure.liquid path="assets/images/gen/projects/flowstatehero2.webp" class="img-fluid rounded" %}

---

### Insights

- **The direction holds.** In every period with a detectable link since 2017, information has flowed from New York to Tokyo.
- **The strength does not.** Before August 2024, the link was graded Strong on 68% of trading days. Since then, on 17%.

---

### Why FlowState

- **It sees direction.** Correlation tells you two markets move together. It can't tell you which one moves first. FlowState can.
- **It says when there's nothing to see.** When the data doesn't support a link, FlowState says so: "No credible lead." A weak period is labeled as one.
- **It takes the yen out.** When the yen moves, both markets can move with it. FlowState strips out that shared push, so the reading reflects New York's own influence on Tokyo.
- **It shows the full record.** Every reading since 2017 is one click away, with major shocks marked, from the 2020 COVID crash to the 2024 yen carry unwind.

---

### Use Cases

- **Testing a model's assumptions.** Many cross-market models assume Tokyo takes its cue from New York. FlowState shows when that held and when it broke down.
- **Spotting a regime change.** The link weakened after August 2024 and has stayed weak. FlowState shows shifts like this as they build, not years later.
- **Reviewing a shock.** See how tightly Tokyo was tied to New York in the year leading up to a crash or a policy surprise.

---

### Methodology

FlowState asks one question: does knowing New York's close help predict Tokyo's next move, beyond what Tokyo's own recent history already tells you?

It answers with Transfer Entropy, a measure from information theory that detects the direction of information flow without assuming markets behave in any particular way. {% cite dimpfl2018analyzing kuang2021measuring %} Each reading is compared against shuffled versions of the same data, then graded by five reliability checks.

Validated on the Nikkei 225 and S&P 500 pair, with DAX and S&P 500 under active research. Other pairs, such as HSI, FTSE, and ASX, are available on request, subject to validation.

---

### Access

[Need more info? → contact us](mailto:info@nippotica.com)
