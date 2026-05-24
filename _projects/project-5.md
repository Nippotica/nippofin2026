---
layout: page
title: "FlowRegime"
description: "Real-time Bitcoin regime classification for quants"
img: assets/images/gen/projects/nippofinengthumb.webp
tags: hpc quant data-quality
related_publications: true
importance: 1
category: Market Signals
date: 2026-05-22
---


> FlowRegime reads BTC-USDT order flow every 15 minutes and tells you whether the market is trending, ranging, or chaotic. 

**[FlowRegime in action → click here](https://flowregime.nippotica.com/)**

Each output includes a confidence score for all three states — not just a label, but a probability.

---

### What Makes It Unique
- Running forward and out-of-sample since January 2022
- Built on order flow, not price patterns
- One bar at a time — same code in backtest and live

---

{% include figure.liquid path="assets/images/gen/projects/nippoticaflowregime.png" class="img-fluid rounded" %}

### Use Cases
- Route your strategy based on live regime — run trend-following in Trend, stay out in Chaotic
- Use p_chaotic as a dynamic risk-off signal during volatility spikes
- Enrich your historical data with regime labels to see where your strategy actually breaks

---

### Methodology
3-state Hidden Markov Model fit on order flow imbalance, dollar flow aggression, and trade intensity. Refitted daily on a rolling 30-day window. {% cite kolm2023deep machimbo2025applications anastasopoulos2026order %}

---

### Access

API for 15-minute labels and full confidence vector.

> **[Signup for API access → click here](https://flowregime.nippotica.com/)**

[More info → contact us](mailto:info@nippotica.com)

---



