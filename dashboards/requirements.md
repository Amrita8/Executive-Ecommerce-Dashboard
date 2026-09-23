# Executive Dashboard Requirements & Scope Synthesis

## Executive Summary & Core Intent
The CEO's request for a 30-second weekly view boils down to executive confidence: immediate clarity on revenue trajectory, growth drivers, and potential operational bottlenecks without cognitive overload. The literal ask is a single-screen dashboard; the functional intent is an early-warning radar for Monday morning leadership alignment.

## Core Problem Statement
* **Growth Direction:** Is net performance moving up or down relative to target/prior period?
* **Growth Drivers:** Which channels, regions, or product categories are driving that motion?
* **Operational Health:** Are there severe breakdowns in fulfillment, customer retention, or unit economics?

## Scope Decisions & Strategic Exclusions

### Included Scope
* Core financial revenue metrics aggregated weekly/monthly.
* Top-level order volume and customer order trends.
* Fulfillment performance metrics to catch logistics issues early.

### Explicitly Excluded Scope
* **Conversion Rate & Session Analytics:** Excluded because web traffic logs are outside the primary transaction database.
* **Granular SKU-Level Sales:** Excluded to maintain single-screen real estate; item details belong in tactical operational tools.
* **Customer Lifetime Value (LTV):** Excluded due to rolling calculation complexity; replaced by 30-day Repeat Order Rate for immediate operational signals.
* **Individual Return Reasons:** Excluded to avoid cluttering high-level executive reviews; summarized under overall Refund Rate.