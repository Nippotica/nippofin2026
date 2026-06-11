---
layout: page
title: "Darkpool Edge"
description: "Will your dark pool survive launch?"
img: assets/images/gen/projects/darkpoolthumb.webp
tags: quant
related_publications: true
importance: 1
category: Use Cases
date: 2026-06-10
---

**[See it in action: launch Darkpool Edge →](https://dpm.nippotica.com)**

> Japan has no shortage of dark pools. {% cite otsuka2017darkpool  wakamatsu2026darkpool %} 

Yet launching a viable dark pool has risks and perils. Every new PTS operator faces the same problem before launch: no empirical data, no participant history, and a fee decision that determines whether the pool reaches self-sustaining
liquidity or fades away quietly at single-digit market share.


SBI Japannext and Goldman Sachs SIGMA X
demonstrated that institutional order flow will migrate off-exchange, but only if the
fee is right and the adverse selection risk is manageable. 


**Darkpool Edge** {% cite homayounfar2026darkpools %} is a quantitative decision tool for PTS operators,
exchange strategists, and institutional brokers designing or evaluating a dark
pool in the Japanese equity market. Enter a proposed fee $$f_D$$. The model
returns the revenue-optimal fee $$f^*$$, projected annual execution fee income
$$R^*$$, and a Go/No-Go verdict — all calibrated to Japan equity market parameters.

{% include figure.liquid path="assets/images/gen/projects/darkpoolmodel.webp" class="img-fluid rounded" %}

---

## What the model returns

**Revenue-optimal fee $$f^*$$**

The fee that maximizes annual execution fee income, derived from the inverse
elasticity condition: the point where margin gained from a fee increase exactly
equals order flow lost. 

Formally, 

$$
f^* = \arg\max_{f_D} R(f_D)
$$

where

$$
R(f_D) = f_D \cdot V_{\text{total}} \cdot \phi(f_D) \cdot T
$$

This must be solved numerically as no closed form exists.

**Migration fraction $$\phi$$**

The share of institutional order flow that routes to the dark pool at a given
fee, modeled as a logistic function of the cost advantage
$$\Delta = s + \lambda\bar{q} + f_L - f_D$$.
Calibrated to TSE mid-cap spread and Kyle $$\lambda$$ estimates from JSDA
2023–24 data.

**Annual revenue projection $$R^*$$**

Projected annual execution fee income per listed security at equilibrium
migration over $$T = 245$$ Japan trading days. Scales linearly across listings:
a venue with $$N$$ comparable securities implies aggregate revenue of
approximately $$N \times R^*$$.

**Go / No-Go verdict**

A two-condition decision panel. 
* Condition 1: cost advantage $$\Delta > 0$$ —
the dark pool must be cheaper than the lit venue for the marginal trader.
* Condition 2: fee proximity to $$f^*$$ — fees outside
$$[0.6 \cdot f^*, 1.4 \cdot f^*]$$ produce a No-Go. An adverse selection
advisory flags that $$\kappa_c$$ cannot be computed without trade-level data
and recommends a PIN-model calibration before launch.

---

## Who it is for

- PTS operators and exchange strategists setting launch fees
- Institutional brokers evaluating venue economics before committing order flow
- Risk and compliance teams stress-testing dark pool fee scenarios
- Quant researchers modeling Japan equity market microstructure
- Pre-sales demonstrations for FSA-regulated venue design engagements

---

## Try it

Darkpool Edge runs entirely in the browser. No installation required.

**[Launch Darkpool Edge →](https://dpm.nippotica.com)**

---

## Enterprise version

The analyzer uses Japan equity market baseline parameters drawn from TSE Level 2
data, JSDA quarterly statistics, and SBI Japannext operational data. An enterprise
version recalibrates the model to a client's proprietary order flow data —
participant composition records, actual execution history, and desk-specific fee
scenarios — and delivers a private deployment with a three-type trader population
(retail, asset manager, proprietary trading firm) and an agent-based simulation
layer modeling individual routing decisions and liquidity feedback effects.

[To discuss an enterprise deployment → contact us](mailto:info@nippotica.com)

---

*Darkpool Edge is part of Nippofin Models — domain-specific,
executable applications of Nippofin's quantitative finance solutions, built for
institutional markets.*

*Nippofin is the fintech business unit of Nippotica Corporation, Tokyo.*