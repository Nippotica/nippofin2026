---
layout: page
title: "YenFM"
description: "How expensive is yen funding today, and is it getting tighter?"
img: assets/images/gen/projects/yenfmthumb.webp
tags: quant
related_publications: false
importance: 2
category: Market Signals
date: 2026-10-27
---

> YenFM monitors yen funding conditions in Tokyo's bank market, updated every business day.

**[YenFM in action → click here](https://yenfm.nippotica.com/)**

Each day, YenFM reads two published interest rates and answers two questions in plain terms. Is borrowing yen getting more expensive? Is it getting tighter? The two can move separately. 

A Bank of Japan rate hike makes yen more expensive without making it tighter.

{% include figure.liquid path="assets/images/gen/projects/yenfmhero.webp" class="img-fluid rounded" %}

YenFM uses two 3-month rates. TIBOR is the rate banks charge each other for unsecured loans. The Tokyo repo rate is the rate for loans backed by Japanese government bonds. From these it builds two measures. Funding cost is TIBOR itself. The unsecured premium is TIBOR minus repo, the extra pay lenders ask for lending without collateral. Both measures are compared with their own daily history since 2007, and the result is a short daily reading.

---

### Why YenFM

- **Separates rate moves from funding stress.** A Bank of Japan decision moves TIBOR and repo by about the same amount, so it largely cancels in the premium. A widening premium therefore points to lending conditions.
- **Transparent.** Every number on screen is a published rate or the difference between two. There is no black-box score.
- **Few alerts.** Over 19 years of daily data, the alert fired on 9 days.
- **Clean history.** Four changes in how the rates are set, in 2012, 2017 and 2018, are marked and kept out of the statistics.

---

### Use Cases

- **Treasury and ALM desks** (ALM is asset-liability management): after a Bank of Japan move, see whether higher funding cost comes with tighter funding or only with a higher rate level.
- **Macro and FX desks:** after a market shock, see whether it reached bank funding in yen. On August 5, 2024, the day of the stock market crash, the premium moved by 0.2 basis points. Yen had become more expensive, and bank funding had not tightened.

---

### Methodology

Each day, YenFM asks four questions of each measure. How has it changed over a day, a week, a month and a quarter? Is today's move unusual compared with the past six months? Has it climbed steadily for several weeks? Where does today sit among all days since 2007? The statistics use medians, so a few extreme days do not distort the comparison.

An alert fires when the unsecured premium jumps by at least 3 basis points in one day and the jump is unusual for the past six months, or when it climbs steadily over several weeks. In both cases its one-month trend must be rising. A basis point is 0.01 percentage points.

YenFM covers the Tokyo interbank market. It does not measure yen raised through currency swaps. A planned second version adds the 3-month Treasury bill yield, to show whether private borrowers are paying more than the government.

---

### Track Record

Tested on 4,839 Tokyo business days, from October 29, 2007 to October 16, 2026.

- **2008 crisis.** Alerts fired. The first came on October 29, 2008, six weeks after Lehman Brothers failed. YenFM flags funding stress as it builds. It does not predict it.
- **Covid shock.** The first alert came on March 9, 2020.
- **Rate changes alone.** No alert when negative rates began in January 2016, and none after the July 2024 hike. Two alerts came within a month of a Bank of Japan decision, in March 2024 and January 2025. The daily reading notes this.
- **Unexplained alerts.** One in 19 years, on February 20, 2026, with no market episode or Bank of Japan decision behind it.

---

### Sources

**Data**

- JBA TIBOR Administration, [Japanese Yen TIBOR](https://www.jbatibor.or.jp/english/rate/). Includes the notice of February 24, 2017 on the TIBOR reform that took effect on July 24, 2017.
- Japan Securities Dealers Association, [Tokyo Repo Rate](https://www.jsda.or.jp/shiryoshitsu/toukei/trr/index.html) (in Japanese). Publisher since October 29, 2012.
- Bank of Japan, [Tokyo Repo Rate](https://www.boj.or.jp/en/statistics/stop/trp/index.htm). Publisher from October 29, 2007 to October 26, 2012.

**Changes in how the rates are set**

- Bank of Japan, [Market Operations in Fiscal 2012](https://www.boj.or.jp/research/brp/ron_2013/data/ron130509a.pdf) (in Japanese), May 2013. Box 2 covers the shorter bond settlement from April 23, 2012.
- Japan Securities Clearing Corporation, [Shortening of JGB Settlement Cycle to T+1 Goes Live on May 1](https://www.jpx.co.jp/jscc/en/information/news/20180429.html), April 29, 2018.

---

### Access

[Need more info? → contact us](mailto:info@nippotica.com)
