---
layout: post
title: "Expiration Myth"
date: 2024-05-15
categories: ["Mathnote", "Technote"]
tags: quant derivatives risk-management 
description: Black-Scholes model is robust near expiration
thumbnail: "/assets/images/gen/blog/bsexpirywc.webp"

---



Euan Sinclair, the author of Volatility Trading (Wiley, 2013) and the newer Positional Option Trading (Wiley, 2020) has said:

> Some people say the Black-Scholes option pricing model breaks near expiration. These people are wrong.


### Sinclair is right

The notion that the Black-Scholes option pricing model "breaks" near expiration is a misunderstanding. The model remains valid but must be interpreted correctly, especially as time to maturity approaches zero. Let's elaborate with some algebra and a few numerical examples.

### Recap

The Black-Scholes formula for a European call option is given by:

\\[ C(S, t) = S \Phi(d_1) - K e^{-r(T-t)} \Phi(d_2) \\]

where:
- \\( S \\) is the current stock price.
- \\( K \\) is the strike price.
- \\( T \\) is the time to expiration.
- \\( r \\) is the risk-free interest rate.
- \\( \sigma \\) is the volatility of the stock.
- \\( \Phi \\) is the cumulative distribution function of the standard normal distribution.

As time to expiration \\( T-t \\) approaches zero, the behavior of the Black-Scholes model can be analyzed through the terms \\( d_1 \\) and \\( d_2 \\).

$$ d_1 = \frac{\ln(S/K) + (r + \sigma^2/2)(T-t)}{\sigma \sqrt{T-t}} $$

And

$$ d_2 = d_1 - \sigma \sqrt{T-t} $$ 



If \\( t \rightarrow T\\)

$$ \lim_{ (t \to T}  d_1 \approx \frac{\ln(S/K) + (r + \sigma^2/2) \cdot 0}{\sigma \sqrt{0}} \rightarrow \infty \text{ or } -\infty $$

And


$$ \lim_{ t \to T} d_2 \approx d_1 - \sigma \sqrt{0} = d_1 $$ 

### Three Cases: In Out At the Money

#### In-the-Money ( \\( S > K \\) )

In this case, \\( \ln(S/K) \\) is positive, \\( d_1 \\) and \\( d_2 \\) both tend to \\( \infty \\), \\( \Phi(d_1) \rightarrow 1 \\) and \\( \Phi(d_2) \rightarrow 1 \\).

Thus

$$ C(S, t) \approx S - K e^{-r(T-t)} \approx S - K $$ 

#### Out-of-the-Money ( \\( S < K \\) )

In the OTM case, \\( \ln(S/K) \\) is negative, \\( d_1 \\) and \\( d_2 \\) both tend to \\( -\infty \\), \\( \Phi(d_1) \rightarrow 0 \\) and \\( \Phi(d_2) \rightarrow 0 \\).

Thus

$$ C(S, t) \approx 0 $$

#### At-the-Money ( \\( S \approx K \\) )

Right at the money, \\( \ln(S/K) \approx 0 \\), \\( d_1 \approx \frac{(r + \sigma^2/2) (T-t)}{\sigma \sqrt{T-t}} = \frac{(r + \sigma^2/2) \sqrt{T-t}}{\sigma} \\), \\( d_2 \approx d_1 - \sigma \sqrt{T-t} = \frac{(r - \sigma^2/2) \sqrt{T-t}}{\sigma} \\). As \\( T-t \rightarrow 0 \\), both \\( d_1 \\) and \\( d_2 \\) tend to zero, \\( \Phi(d_1) \rightarrow 0.5 \\) and \\( \Phi(d_2) \rightarrow 0.5 \\).

Hence

$$ C(S, t) \approx S \cdot 0.5 - K e^{-r(T-t)} \cdot 0.5 \approx 0.5(S - K) $$

The following numerical calculations show that Black-Scholes model's behavior near expiration aligns very well with the intrinsic value of the option and the probability of the option finishing in-the-money.


**Intrinsic Value:**
For a call option, the intrinsic value is \\( \max(S - K, 0) \\). As time to expiration \\( (T - t) \\) approaches zero, the option's price should approach its intrinsic value.

**Probability of Finishing In-the-Money:**
The probability of an option finishing in-the-money (ITM) is represented by \\( \Phi(d_2) \\). The parameters \\( \Phi(d_1) \\) and \\( \Phi(d_2) \\) indicate the likelihood that the stock price will be above the strike price at expiration.

### Illustrative examples

#### In-the-Money ( \\( S = 105 \\), \\( K = 100 \\) )

Intrinsic Value is \\( \max(105 - 100, 0) = 5 \\)

$$ d_1 = 2.45 \\), \\( d_2 = 2.25 $$

$$ \Phi(d_1) = 0.993 \\), \\( \Phi(d_2) = 0.988 $$

ITM Option Price 

$$ C = 105 \cdot 0.993 - 100 \cdot e^{-0.05 \cdot 0.01} \cdot 0.988 \approx 5.02 $$


As the option is ITM, the price \\( 5.02 \\) is close to its intrinsic value \\( 5 \\). Here, \\( \Phi(d_2) = 0.988 \\) indicates a very high probability (98.8%) of finishing ITM.

#### Out-of-the-Money ( \\( S = 95 \\), \\( K = 100 \\) )

Intrinsic Value: \\( \max(95 - 100, 0) = 0 \\)

$$ d_1 = -2.35 \\), \\( d_2 = -2.55 $$

$$ \Phi(d_1) = 0.009 \\), \\( \Phi(d_2) = 0.005 $$

OTM Option Price 

$$ C = 95 \cdot 0.009 - 100 \cdot e^{-0.05 \cdot 0.01} \cdot 0.005 \approx 0.40 $$


As the option is OTM, its price \\( 0.40 \\) is near zero, consistent with its intrinsic value of zero. The value of \\( \Phi(d_2) = 0.005 \\) indicates a very low probability (0.5%) of finishing ITM.

#### At-the-Money ( \\( S = 100 \\), \\( K = 100 \\) )

Intrinsic Value: - \\( \max(100 - 100, 0) = 0 \\)

$$ d_1 = 0.025 \\), \\( d_2 = 0.005 $$

$$ \Phi(d_1) = 0.510 \\), \\( \Phi(d_2) = 0.502 $$

ATM Option Price 

$$ C = 100 \cdot 0.510 - 100 \cdot e^{-0.05 \cdot 0.01} \cdot 0.502 \approx 0.80 $$

This option price \\( 0.80 \\) is slightly above zero due to the time value and volatility.
Yet \\( \Phi(d_2) = 0.502 \\) indicates about a 50.2% probability of finishing ITM.

### Key Points

- **Intrinsic Value Convergence:** As \\( T-t \rightarrow 0 \\), the option price approaches its intrinsic value. For ITM options, the price approaches \\( S - K \\). For OTM options, the price approaches zero.
- **Probability Reflection:** The values \\( \Phi(d_1) \\) and \\( \Phi(d_2) \\) represent probabilities of the option finishing ITM. Near expiration, these probabilities are in line with the actual likelihood of the option's payoff.


The Black-Scholes model correctly reflects the intrinsic value and the probability of finishing ITM as expiration nears. 

> The Black-Scholes model does not "break" near expiration. 

Instead, the behavior of the model is consistent with the intrinsic value of the option and the probability of the option finishing in-the-money. The correct interpretation and application of the model's output near expiration are crucial.
