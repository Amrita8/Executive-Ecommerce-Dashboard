# Visual & Technical Design Defense

## 1. Executive Layout Architecture
The dashboard uses a structured **Z-pattern layout grid** built with Tableau vertical and horizontal containers to match standard executive scanning habits:
* **Top Row (Hero KPIs):** Net Revenue, Total Orders, Average Order Value (AOV), Repeat Customer Rate, and SLA Compliance. High-level metric callouts with explicit period-over-period delta indicators.
* **Middle Section (Strategic Drivers):** Monthly Revenue/AOV Trend combined with Regional Distribution. Focuses on revenue volume and geographical split.
* **Bottom Section (Operational Health):** Fulfillment SLA status and Refund/Cancellation breakdown. Identifies operational bottlenecks affecting customer retention.

---

## 2. Marks Cards & Visual Encoding

### Chart Types
* **KPI Scorecards (Top Row):** Single-value text mark with embedded trend lines. Provides rapid assessment without requiring chart interpretation.
* **Combination Dual-Axis Chart (Middle Left):** Bar chart for Net Revenue paired with a line chart for AOV over time. Combines volume and basket-size performance in one view.
* **Horizontal Bar Chart (Middle Right):** Sorted descending by sales volume. Maximizes readability for category/regional comparisons without text overlap.
* **Gantt / Bullet Chart (Bottom Row):** Targets vs. actual fulfillment days. Clear representation of performance against operational SLAs.

### Color Palette Rationale
* **Primary Metric Color:** Slate Blue (`#2B4C7E`) — Used for standard metric volumes and main trend bars to maintain a polished presentation.
* **Highlight / Alert Colors:**
  * **Muted Teal (`#2E8B57`):** Positives, target achievements, and healthy SLA status.
  * **Soft Coral (`#D9534F`):** Performance dips, high cancellation rates, or SLA breaches.
* **Backgrounds & Containers:** Light gray canvas (`#F8F9FA`) with white container cards to create visual separation without heavy border lines.

---

## 3. Parameters & Interactivity
* **Date Granularity Parameter:** Allows switching between MTD, QTD, and YTD aggregations dynamically.
* **Tooltip Design:** Custom hover tooltips built with condensed summary tables, delivering supporting contextual data without overloading the main dashboard space.