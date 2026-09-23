# Executive Feedback Response & Iteration Log

## Executive Summary
Following the Milestone 3 review, this document outlines the targeted revisions made to the Executive E-Commerce Dashboard, alongside technical and business rationales for choices maintained without modification. Revisions focus on improving visual hierarchy, streamlining SLA tracking, and elevating decision clarity for leadership.

---

## Point-by-Point Feedback Matrix

| # | Feedback Area / Item | Decision | Action Taken / Rationale |
|---|---|---|---|
| **1** | **Net Revenue & Order Volume Trends**<br>*"Show daily granular spikes rather than aggregated monthly trends."* | **Pushed Back** *(Defended)* | Maintained monthly rollup with Quarter/Month parameter controls. Daily granularity introduces excessive noise at the executive level, obscuring underlying baseline growth and seasonality. |
| **2** | **Fulfillment SLA Tracking**<br>*"Color code fulfillment delivery speed by individual fulfillment centers."* | **Adopted** | Updated the Fulfillment SLA visual to use a consistent threshold palette (Green = SLA met, Red = SLA breach across centers). |
| **3** | **Regional Breakdown**<br>*"Add pie charts for state-level revenue distribution."* | **Pushed Back** *(Defended)* | Retained horizontal bar chart format sorted by revenue. Pie charts with >5 categories hinder quick visual comparison across top-performing regions. |
| **4** | **Repeat Order Rates & AOV**<br>*"Make AOV and Repeat Rate primary KPIs at the top."* | **Adopted** | Restructured top KPI hero cards to highlight Net Revenue, AOV, and Repeat Rate side-by-side with period-over-period percentage indicators. |
| **5** | **Dashboard Color Scheme**<br>*"Use bright red and green fills across all metric cards."* | **Adopted with Counter-Offer** | Applied a neutral gray base palette across cards and reserved high-contrast alert colors (coral/green) strictly for outlier flags and SLA breaches to prevent visual fatigue. |

---

## Key Pushback Rationale & Analytical Defense

### 1. Retention of Monthly Granularity over Daily Spikes
* **Executive Request:** Transition revenue trend visuals to a daily view.
* **Analytical Defense:** Daily e-commerce sales fluctuate significantly due to weekend dips, promotional flash sales, and payment gateway batch delays. Switching to daily granularity adds line noise that distracts executive leadership from evaluating strategic trajectory. To support tactical root-cause analysis without cluttering the primary view, monthly trends remain standard, with drill-down capability available via hover tooltips and linked detailed views.

### 2. Defense of Bar Charts over Pie Charts for Regional Revenue
* **Executive Request:** Display state/regional performance as a pie chart.
* **Analytical Defense:** Human perception struggles to evaluate angular areas accurately, especially across 10+ operational regions. Using a sorted horizontal bar chart allows stakeholders to instantly benchmark performance gaps across top regions without reading individual percentage labels.

---

## Summary of Dashboard Improvements
* **Visual Hierarchy:** Repositioned top-line business drivers (Net Revenue, AOV, Repeat Rate) into unified top-level KPI summary tiles.
* **Alert System:** Standardized conditional formatting across logistics and SLA cards.
* **User Interactivity:** Added parameter controls for date filtering and category selection without sacrificing layout structure.