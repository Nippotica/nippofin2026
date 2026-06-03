---
layout: page
title: "TradeScope FX"
description: "See market impact before the trade"
img: assets/images/gen/projects/tradescopefxthumb.webp
tags: quant  
related_publications: true
importance: 2
category: Models
date: 2026-06-02
---

**[See it in action: launch TradeScope FX →](https://tradescope.nippotica.com)**


## What's the problem?

When an institutional desk places a large USD/JPY or EUR/JPY order, the act of
trading moves the market against them. The bigger the order, the worse the
slippage. TradeScope FX tells you how bad — before you pull the trigger.

---

## The Solution: TradeScope FX

TradeScope FX is a pre-trade market impact estimator for large FX orders.
A desk enters a proposed order — currency pair, size, execution window, and
current market conditions. The tool returns expected slippage, adverse-case
slippage, and timing risk, in pips and basis points.

It is not a trading system. It does not place orders. It is a decision-support
tool: trade now, slice the order, or wait for better conditions.

---

## How TradeScope FX works

The diagram below shows the full architecture. {% cite evans2012exchange  cao2026real %}

{% include figure.liquid path="assets/images/gen/projects/nippoticatradescopefx.webp" class="img-fluid rounded" %}

The **FX Desk Input** is where the desk enters its proposed order: currency pair, order size,
execution window, spot price, volatility, trading session, and current liquidity
regime. These inputs flow into the Impact Model at the centre.

The **Model Engine** has three components. The market impact function maps order
size, volatility, and available volume into an expected price impact. An urgency
multiplier adjusts that impact up or down depending on how fast the order needs
to be executed — faster execution costs more. A liquidity regime multiplier
scales the result for current market conditions, from deep and liquid to thin,
volatile, or stressed.

Those three components feed into the **Scenario Engine**, which sweeps six execution
windows from 15 minutes to 6 hours. For each window, it computes expected
impact, adverse-case and stress scenarios, timing risk, and total adverse cost.

On the right, the **Pre-Trade Output** gives the desk what it needs: expected impact
in pips and basis points, P90 and stress impact scenarios, timing risk at the
90th percentile, and an execution window recommendation.

The dashed arrow at the bottom shows the enterprise extension: post-trade
calibration using the client's own historical fills, realized slippage, and
venue-level liquidity data. That is how the model moves from literature-based
defaults to a bank-grade production estimator.

---

## The key insight

TradeScope FX separates two costs that desks often conflate:

**Market impact** — the slippage caused by your own order moving the market.

**Timing risk** — the adverse price move that occurs while the order is still
being worked.

Faster execution reduces timing risk but raises market impact. Slower execution
does the opposite. TradeScope FX quantifies both sides of that trade-off, for
every execution window, before the order is placed.

---

## Currency pairs

TradeScope FX covers USD/JPY and EUR/JPY, parameterized separately.

USD/JPY is the world's most actively traded currency pair during the Tokyo
session. EUR/JPY is thinner — its effective liquidity depends on conditions in
both EUR/USD and USD/JPY simultaneously. A model that treats EUR/JPY as a
standalone ticker underestimates impact during periods of stress in either leg.
TradeScope FX accounts for this.

---

## Who it is for

- Asset managers with overseas bond portfolios
- Life insurers executing currency hedges
- Trust banks managing large repatriation flows
- Corporate treasury desks settling cross-border transactions
- FX brokers serving institutional clients
- Securities firms and regional banks with USD/JPY or EUR/JPY execution desks

---

## Try it

TradeScope FX is available as an interactive web application.

**[Launch TradeScope FX →](https://tradescope.nippotica.com)**

---

## Enterprise version

The current version uses literature-based parameters. The enterprise version is
calibrated to the client's own execution history — historical parent orders,
child orders, fills, benchmark prices, and realized slippage. It also includes
venue-level liquidity modeling and an audit trail for best-execution governance.

[To discuss a calibration PoC → contact us](mailto:info@nippotica.com)

---

*TradeScope FX is part of Nippofin Models — domain-specific, executable
applications of Nippofin's quantitative finance solutions, built for institutional market.*

*Nippofin is the fintech business unit of Nippotica Corporation, Tokyo.*