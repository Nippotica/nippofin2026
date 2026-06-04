---
layout: page
title: "Quant Gallery"
description: "Explore. Compute. Discover."
img: assets/images/gen/projects/nippogallerythumb.webp
tags: quant
related_publications: true
importance: 3
category: Execution Models
date: 2026-06-04
---

**[See it in action: launch Quant Gallery →](https://quant.nippotica.com)**


The Nippofin Quant Gallery is an interactive demonstration platform covering core
quantitative finance methods used by institutional clients across Japanese capital
markets. Each module is parameter-driven and live — adjust inputs and results
update immediately, without writing a single line of code.

It is designed for quant teams, risk desks, and structured products groups who want
to explore pricing models, sensitivity measures, and statistical methods in a clean,
browser-based environment.


{% include figure.liquid path="assets/images/gen/projects/nippofingallery.webp" class="img-fluid rounded" %}

---

## Modules

**Jäckel Implied Volatility**

Turns raw option prices into an implied-volatility smile using Peter Jäckel's
LetsBeRational {% cite jackel2015let %} algorithm, which inverts the Black-Scholes formula to full machine precision in exactly two iterations — faster and more robust than
standard Newton-Raphson methods.

**Fast Greeks**

Computes the full set of option sensitivities — Delta, Gamma, Vega, Rho, Theta,
and barrier Greeks — in a single pass using automatic differentiation via JAX,
demonstrating that reverse-mode AD matches closed-form Black-Scholes Greeks to
floating-point precision and outperforms bump-and-reprice for Monte Carlo pricers
as the number of risk factors grows. {% cite capriotti2011fast %} 

**Hit Probability**

Estimates the probability that a stock will reach a target price within a chosen
time horizon by fitting a four-parameter Lévy α-stable distribution to historical
log returns — capturing fat tails and extreme events that a normal distribution
systematically underweights. {% cite Rimmer2008StableDistributions %}

**Return Sensitivity**

Stacks two resampling methods on the same dataset: Jackknife leave-one-out, which
quantifies estimation uncertainty in the annual return; and delete-d subsampling,
which maps the full scenario space of what the return would have been if any d
trading days were removed from history. {% cite friedl2014jackknife martin2010delete %}

---

## Who it is for

- Derivatives desks exploring implied volatility and Greeks
- Risk teams validating pricing models and sensitivity methods
- Quant researchers benchmarking statistical estimators
- Compliance and structured products teams evaluating scenario outcomes
- Pre-sales demonstrations for institutional clients

---

## Try it

The Quant Gallery runs entirely in the browser. No installation required.

**[Launch Quant Gallery →](https://quant.nippotica.com)**

---

## Enterprise version

The gallery uses public market data and standard model defaults. An enterprise
version can be calibrated to a client's own data — proprietary option chains,
internal return histories, and desk-specific parameter sets — and delivered as
a private deployment behind an authentication layer.

[To discuss an enterprise deployment → contact us](mailto:info@nippotica.com)

---

*Nippofin Quant Gallery is part of Nippofin Models — domain-specific, executable
applications of Nippofin's quantitative finance solutions, built for institutional markets.*

*Nippofin is the fintech business unit of Nippotica Corporation, Tokyo.*
