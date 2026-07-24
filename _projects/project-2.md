---
layout: page
title: "SynthFlow"
description: "Synthetic SPY price paths: regime-aware, statistically audited"
img: assets/images/gen/projects/synthflowthumb.webp
tags: quant fintech
related_publications: true
importance: 2
category: Synthetic Data
---

[SynthFlow on Snowflake Marketplace →](https://app.snowflake.com/marketplace)

> SynthFlow generates synthetic daily SPY price paths — calibrated regime dynamics, volatility clustering, and fat tails — for strategy robustness testing beyond the single realized history.

### The Backtesting Problem

Historical data gives one realized path of SPY and every backtest runs on that path. A strategy can look robust  because it happened to fit the sequence of events that occurred. Was it robust, or just fit to one possibility? What if the price paths were different?

SynthFlow addresses this by generating many statistically plausible alternate histories for the same asset, so a strategy can be tested against a range of market conditions rather than the one that happened to occur.

{% include figure.liquid path="assets/images/gen/projects/nippoticasynthflowcloud.webp" class="img-fluid rounded" %}

### How SynthFlow Works

You specify a historical period and a seed; SynthFlow returns a reproducible two-year synthetic price path with a full statistical passport attached.

{% include figure.liquid path="assets/images/gen/projects/nippoticasynthflowpipeline.webp" class="img-fluid rounded" %}

SynthFlow's engine runs three layers in sequence. A first-order Markov chain simulates a regime sequence — quiet, normal, or stress. An EGARCH volatility recursion with a leverage term sets each day's conditional volatility. Filtered Historical Simulation draws each day's shock from a pool of real SPY standardized residuals. The three layers combine into a daily log-return, compounded into a price path. No neural networks, no GPU.

Using synthetic market data to evaluate strategies against conditions beyond the single realized record is an established application area in quantitative finance {% cite potluru2023synthetic %}. Deep generative approaches such as diffusion models are an active alternative direction in the literature {% cite takahashi2025generation %}. SynthFlow's approach also differs from generative deep-learning methods for synthetic OHLCV data, such as {% cite homayounfar2026ohlcv %}, in favoring classical, auditable statistical methods over black-box generation.

### What Makes It Unique

- **Auditable by design.** Every path carries a passport — the seed, the realized regime sequence, full return/tail/volatility/drawdown statistics, and similarity scores against real SPY. A path is not a number series; it's a claim you can inspect and challenge.
- **Honest about its limits.** The validated horizon is two years. The generator refuses longer requests rather than producing paths outside validated scope. Paths run modestly hot on volatility and drawdown depth relative to real SPY — disclosed, and directly measurable against a companion real-SPY reference table.
- **Grounded in real market structure, not black-box generation.** No GAN, no diffusion model. EGARCH and regime-switching are transparent, auditable statistical methods with a decades-long track record in quantitative finance.

---

### Use Cases

- Test whether a strategy's backtest performance is robust or a lucky fit to one historical sequence.
- Stress a strategy across a taxonomy of market moods — calm grind-ups, sharp crises, V-shaped recoveries — including moods real history offers only once.
- Benchmark synthetic-data generation methods against a transparent, disclosed baseline.

---

### Sample Dataset

A free sample dataset — 240 synthetic two-year SPY paths spanning twelve historical periods from 2001 to 2024, each with full passport metadata and a real-SPY reference table — is available on Snowflake Marketplace.

[Snowflake Marketplace →](https://app.snowflake.com/marketplace)

### Further Details

For research collaborations or licensing inquiries, [contact us](mailto:info@nippotica.com).

---
