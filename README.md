# Fintech E-Commerce Funnel & Payment Method Conversion Analysis (A/B Testing)

An end-to-end fintech data analytics project analyzing e-commerce user conversion funnels, evaluating payment gateway modifications via A/B testing (statistical hypothesis testing), and visualizing business impact through an interactive Power BI dashboard.

---

## 📌 Project Overview

This project simulates a real-world e-commerce fintech scenario. The objective was to evaluate whether optimizing payment method offerings and checkout flows (Variant 2 vs. Variant 1/Control) leads to statistically significant improvements in user conversion rates and revenue growth.

### **Key Metrics Highlighted in Dashboard:**
* **Total Users Evaluated:** 20.00K
* **Total Conversions:** 3.00K (Overall Conversion Rate: **12.73%**)
* **Total Baseline Revenue:** ₹157.94K
* **Estimated Revenue (Variant 1):** ₹411.26K
* **Estimated Revenue (Variant 2):** ₹533.76K
* **Projected Annual Revenue Impact:** **+₹122.50K Uplift**

---

## 🏗 Project Workflow & Architecture

```
┌─────────────────────────────────┐
│  Synthetic User Activity Data   │
│ (20K E-commerce Checkout Logs)  │
└────────────────┘────────────────┘
                 │
                 ▼
┌─────────────────────────────────┐
│     Funnel Analysis & Drop   │
│  - Landing -> Cart -> Checkout  │
└────────────────┘────────────────┘
                 │
                 ▼
┌─────────────────────────────────┐
│    Statistical Hypothesis Test  │
│  - Two-Proportion Z-Test        │
│  - Statistical Power Analysis   │
└────────────────┘────────────────┘
                 │
                 ▼
┌─────────────────────────────────┐
│   Power BI Dashboard & Impact   │
│  - Device & Payment Splits      │
│  - Revenue Impact Forecasting   │
└─────────────────────────────────┘
```

---

## 📊 1. Funnel Analysis

We tracked synthetic user journeys through the primary e-commerce conversion funnel:
1. **Homepage / Landing Page Visit**
2. **Product View & Add to Cart**
3. **Initiate Checkout**
4. **Payment Processing & Order Completion**

### Key Findings:
* Significant drop-offs occurred between **Initiate Checkout** and **Payment Completion**, prompting an investigation into checkout experience and payment options.
* Introducing modernized payment flows (Variant 2 featuring UPI and Card optimization) successfully reduced checkout friction.

---

## 🧪 2. Statistical Significance & Hypothesis Testing

To prove that observed conversion uplifts in **Variant 2** were statistically meaningful and not due to random chance, rigorous hypothesis testing was performed.

### **Hypothesis Formulation:**
* **Null Hypothesis ($H_0$):** $p_{variant1} = p_{variant2}$ (Payment method changes have no effect on conversion rate).
* **Alternative Hypothesis ($H_1$):** $p_{variant2} > p_{variant1}$ (Variant 2 significantly increases conversion rate).

### **Statistical Tests Conducted:**
1. **Two-Proportion Z-Test:** Calculated $p$-value ($p < 0.05$) to confirm statistical significance at a 95% confidence level.
2. **Statistical Power Analysis:** Verified test power ($1 - \beta > 0.80$) to guarantee sufficient sample size ($N = 20,000$) and minimize Type II errors.
3. **Lift Calculation:** Measured the relative conversion rate lift between Variant 1 and Variant 2 across key dimensions.

---

## 💻 3. Power BI Dashboard Insights

The **E-Commerce Conversion Dashboard** aggregates the performance of Variant 1 and Variant 2 across device types and payment methods.

### **Key Insights from Dashboard Visualization:**

1. **Device Type Breakdown:**
   * **Mobile:** High adoption for Variant 2 (794 conversions) vs Variant 1 (654 conversions).
   * **Desktop:** Variant 1 (334 conversions) vs Variant 2 (374 conversions).
   * **Tablet:** Stable across variants (Variant 1: 191, Variant 2: 198).

2. **Payment Medium Distribution:**
   * **NetBanking:** High volume in Variant 1 (1,179 conversions) but lower in Variant 2 (215 conversions), indicating shift towards seamless payment methods.
   * **UPI:** Heavy driver in Variant 2 (769 conversions).
   * **Credit/Debit Card:** Strong performance in Variant 2 (382 conversions).

3. **Financial Impact & Annual Uplift:**
   * Implementing Variant 2 across the entire user base yields a projected **+₹122.50K Annual Revenue Impact** ($	ext{Variant 2 Revenue } 533.76	ext{K} - 	ext{Variant 1 Revenue } 411.26	ext{K}$).

---

## 🛠 Tech Stack & Tools Used

* **Data Generation & Cleaning:** Python (`pandas`, `numpy`)
* **Statistical Testing:** Python (`scipy.stats`, `statsmodels`)
* **Data Visualization & Business Intelligence:** Power BI (DAX, Interactive Slicers, Custom Layouts)
* **Documentation & Reporting:** Markdown

---

## 📂 Repository Structure

```
├── data/
│   └── synthetic_ecommerce_user_data.csv    # Raw user funnel & checkout logs
│── funnel_analysis.sql                      # Funnel drop-off logic
│   ab_testing_ztest.ipynb                   # Statistical testing & Power analysis
├── dashboard/
│   ├── ecommerce_conversion_dashboard.pbix  # Power BI report file
│   └── conversion_dashboard.png             # Visual dashboard view
└── README.md                                # Project Documentation
```

## 🎯 Conclusion & Business Recommendations

* **Deploy Variant 2:** The statistical z-test confirms that Variant 2 produces a non-random, statistically significant improvement in checkout conversion rates.
* **Optimize for UPI & Mobile:** Mobile users using UPI/Cards account for the highest conversion volume in Variant 2. Prioritizing mobile checkout optimizations will yield the highest ROI.
* **Revenue Growth:** Rollout of Variant 2 is projected to deliver an **annual revenue increase of ₹122.50K**.
