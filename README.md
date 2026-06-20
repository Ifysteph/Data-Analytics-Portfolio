
# NYC Restaurant Food Safety Analysis

## Project Overview

This project leverages a dataset of over 280,000 inspection records to analyze food safety trends across New York City from 2015 to 2025. By evaluating violation patterns, cuisine-specific risks, and geographic concentrations, this analysis provides actionable, data-driven recommendations to help the NYC Department of Health transition from a reactive inspection model to a proactive, intelligence-led strategy.

---

## Business Problem

The NYC Department of Health faces "information overload" due to the sheer volume of inspection data. Because safety risks are not distributed evenly across neighborhoods, cuisines, or operational practices, current inspection efforts often struggle to allocate resources efficiently, leading to avoidable public health risks.

---

## Objectives

* **Identify High-Frequency and High-Risk Patterns:** Pinpoint common violation types and categorize by "Criticality" to differentiate between minor maintenance issues and severe health risks.


* **Map Geographic and Cuisine-Specific Risks:** Move beyond "one-size-fits-all" inspections to identify specific neighborhoods (NTAs) and cuisines struggling with compliance.


* **Analyze Long-Term Safety Trends:** Evaluate how food safety performance has evolved from 2015 to 2025 to understand systemic changes across the five boroughs.


* **Optimize Resource Allocation:** Develop strategies to prioritize education in areas with knowledge gaps and targeted enforcement for high-risk, repeat offenders.



---

## Key Insights

* **Critical vs. Non-Critical Divide:** Manhattan is the only borough with critical violations in the top 10 (06D, 02G, 06C), while non-critical violations like "10F" are widespread citywide.


* **The Safety Gap:** City-wide food safety has worsened significantly over the last decade; average risk scores climbed from below 10.0 (2015) to 17-19 (2025), and "A-grade" rates dropped from nearly 100% to roughly 65%.


* **Regional Crises:** Queens has emerged as the riskiest borough as of 2025, with the highest average risk score (19.92) and the lowest percentage of A-grades (58.90%).


* **Cuisine-Specific Challenges:** High-risk scores are concentrated in specific categories, such as Frozen Desserts (Brooklyn) and Indian cuisine (Queens), while American and Chinese cuisines represent the highest total volume of violations.



---

## Strategic Recommendations

* **For Manhattan:** Launch a "Critical Strike" Task Force to address high-risk critical violations and implement sector sweeps for American cuisine restaurants.


* **For Queens:** Deploy a "Safety Recovery" Task Force, prioritizing senior inspector visits and consultative inspections to reverse the borough's safety deterioration.


* **City-wide Education:** Implement a digital "self-correction" portal for non-critical violations and launch multilingual cultural outreach programs for cuisines showing recurring compliance struggles.


* **Proactive Prevention:** Establish a "New Owner Bootcamp" with mandatory hands-on training for new licensees to ensure compliance before official operations begin.



---

## Tools & Technology

* **Excel:** Data organization and initial trend calculation
* **SQL:** Aggregation of large-scale inspection data and violation analysis
* **Power BI:** Visualization of geographic and long-term risk trends

## Project Structure
```  
nyc-food-safety-analysis/
 ├── README.md
 ├── data/
 │   └── nyc_inspection_data.csv
 ├── excel/
 │   └── inspection_analysis.xlsx
 ├── sql/
 │   └── NYC_Inspection_SQL.sql
 ├── powerbi/
 │   └── NYC_Inspection_Dashboard.pbix
 └── documentation/
     └── NYC_Inspection_Analysis_Report.pptx

```





