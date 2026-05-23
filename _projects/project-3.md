---
layout: page
title: "SynthDrive"
description: "Telematics data: synthetically generated, actuarial-grade"
img: assets/images/gen/projects/nippodqmthumb.webp
tags: quant insuretech
related_publications: true
importance: 3
category: Synthetic Data
---

> SynthDrive generates policy-level synthetic telematics portfolios—driver variables, vehicle variables, usage and driving-behavior signals, claim counts, and claim amounts—without requiring access to proprietary insurer data. 

You specify a portfolio size and a random seed; SynthDrive returns a reproducible dataset with the actuarial structure needed for pricing, fraud, and UBI model development.

{% include figure.liquid path="assets/images/gen/projects/synthdrive_dashboard.webp" class="img-fluid rounded" %}

### What Makes It Unique

- **Constraint-aware by design.** Compositional driving variables are enforced to sum correctly, exposure bounds are hard constraints, and claim amounts are zero whenever claim counts are zero. The dataset cannot be silently invalid.
- **Frequency-severity decomposition built in.** Claim counts follow a zero-inflated negative binomial model with an exposure offset. Severity is drawn from a Gamma model, risk-adjusted per policy. The pipeline matches the standard actuarial GLM framework, not a black-box regressor.
- **Validated against a public benchmark.** GLM coefficients, marginal distributions, and frequency relativities are compared against the So–Boucher–Valdez (2021) public synthetic telematics dataset. The validation report documents what the generator reproduces, what is approximate, and what is not tested.

---

### Use Cases

- Build and benchmark UBI pricing models without requesting proprietary insurer data.
- Test frequency and severity GLMs, GBMs, or neural claim models on a controlled synthetic portfolio before applying them to real data.
- Evaluate synthetic-data algorithms against a structured actuarial baseline with known ground truth.

---

### How It Works

SynthDrive generates each synthetic policy in three steps: a Gaussian copula produces correlated driver, vehicle, and telematics variables; a zero-inflated negative binomial model assigns claim counts scaled to exposure; and a Gamma model draws claim amounts for policies that claim. No neural networks, no GPU. 

Parameters are calibrated from public synthetic telematics datasets. {% cite so2021synthetic  duval2022much %}



### Access

[Read the white paper →](#) · [View on GitHub →](#)


---


