# Fintech E-Commerce Funnel & Payment Method Conversion Analysis (A/B Testing)

End-to-end analysis of an e-commerce checkout funnel and a payment-flow A/B test,
using statistical hypothesis testing to validate whether a UI/payment change
(Variant 2) drives a real, non-random improvement in conversion over the
existing flow (Variant 1).

> **Note:** All data used in this project is synthetically generated to simulate
> realistic e-commerce user behavior, since no real production dataset was
> available. As synthetic data, no missing-value or duplicate-record cleaning
> was required.

## 📌 Key Results

- **Funnel analyzed:** 100K+ user interaction events (page views, cart adds,
  checkout starts, payments) across 2,500 unique user sessions.
- **Checkout funnel drop-off:** 22.8% of users who reach checkout do not
  complete payment — the single largest leak in the funnel.
- **A/B test result:** Variant 2 improved conversion from 11.78% → 13.68%
  (+1.9 percentage points, a 16.1% relative lift), statistically significant
  at p < 0.001.
- **Statistical power:** 98.1% — well above the 80% minimum threshold, meaning
  the test had more than sufficient sample size to reliably detect a true effect.
- **Projected impact:** +₹122.5K annual revenue uplift if Variant 2 is rolled out.

## 🧭 1. Funnel Analysis

Tracked user progression through: Visit → Product View → Add to Cart → Checkout → Payment,
across 2,500 unique users and 100K+ logged events.

| Stage                  | Conversion % | Drop-off   |
|--------------------------|-------------|------------|
| Visit → Product View     | 100.00%     | —          |
| Product View → Cart      | 99.36%      | 0.64%      |
| Cart → Checkout          | 95.89%      | 4.11%      |
| Checkout → Payment       | 77.20%      | **22.80%** |

**Finding:** checkout-to-payment is the primary friction point in the funnel,
motivating the payment-flow A/B test below.

## 🧪 2. A/B Test: Statistical Hypothesis Testing

**Hypotheses**
- H₀ (Null): Conversion rate does not differ significantly between Variant 1 and Variant 2
- H₁ (Alternative): Variant 2 has a significantly higher conversion rate than Variant 1

**Method:** Two-proportion Z-test, α = 0.05

| Metric             | Variant 1 | Variant 2 |
|----------------------|-----------|-----------|
| Conversion Rate       | 11.78%    | 13.68%    |

- **Result:** p < 0.001 → Reject H₀. The uplift in Variant 2 is statistically
  significant and not attributable to random chance.
- **Absolute lift:** +1.9 percentage points
- **Relative lift:** +16.1%
- **Statistical power:** 98.12% — the test design had a 98.12% probability of
  detecting the true effect if one exists, confirming the result is not a false
  positive from an underpowered sample.

## 📊 3. Power BI Dashboard

Aggregates funnel and A/B test performance across device type and payment method,
with projected revenue impact.

<img width="788" height="447" alt="conversion_dashboard" src="https://github.com/user-attachments/assets/b76ac438-779e-43a7-bf4f-8a5e6145952b" />


## 🎯 Conclusion & Recommendation

- **Deploy Variant 2** — the Z-test confirms a statistically significant,
  non-random improvement in checkout-to-payment conversion.
- **Prioritize mobile + UPI optimization** — highest-converting segment under
  Variant 2.
- **Projected annual revenue impact:** +₹122.5K if rolled out.

## 🛠 Tech Stack
Python (pandas, numpy, scipy.stats, statsmodels) · SQL · Power BI (DAX)

## 📂 Repository Structure
```
├── data/                       # Synthetic funnel & A/B test event data
├── funnel_analysis.sql         # Funnel drop-off logic
├── ab_testing_ztest.ipynb      # Z-test, power analysis
├── dashboard/                  # Power BI report + screenshot
└── README.md
```
