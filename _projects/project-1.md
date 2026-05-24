---
layout: page
title: "TransData"
description: "Synthetic order flow for exchange surveillance"
img: assets/images/gen/projects/nipposysdevthumb.webp
importance: 2
category: Synthetic Data
related_publications: true
date: 2026-05-22
---



TransData generates realistic order and trade records for exchange-traded derivatives — complete with embedded manipulation patterns and ground-truth labels. 

> **[TransData in action → click here](https://transapps.nippotica.com)**

You configure the scenario; TransData produces a fully reproducible, timestamped transaction log with no real member data, no confidentiality risk, and no licensing constraints.

---

{% include figure.liquid path="assets/images/gen/projects/nippoticatransdata.png" class="img-fluid rounded" %}

### What Makes It Unique

- Every output is labeled. Spoofing, wash trading, layering, and momentum ignition are injected by design and tagged at the event level — giving surveillance models the ground truth that real data never provides.
- Fully configurable. Control instrument, session length, volatility regime, agent mix, and abuse intensity through scenario files. Every dataset is reproducible from its parameters.
- Safe to share. No real orders, no member identities, no proprietary strategies. Use it with vendors, partners, regulators, and new staff without restriction.

---

### Use Cases

- Train and benchmark manipulation detection models without touching confidential production data.
- Stress-test matching engines, surveillance pipelines, and alert logic against high-load and edge-case flows before deployment.
- Run compliance training and regulatory demonstrations using reproducible, documented scenarios.

---

### Methodology

TransData generates a limit order book using statistically calibrated agents whose arrival rates cluster in time — quiet periods punctuated by bursts, the way real markets behave. Abusive agents inject manipulation patterns on top of this baseline at controlled intensities. Every scenario is fully reproducible from its parameter file and random seed. {% cite rocsu2009dynamic  bartolozzi2010multi cont2021stochastic %}

---

### Access

> [Experience TransData → click here](https://transapps.nippotica.com)

[Need more info? → contact us](mailto:info@nippotica.com)