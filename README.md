# OLA Ride Booking Analysis 🚗📊

[cite_start]A data-driven business intelligence project that analyzes **103,024 ride bookings** from July 2024[cite: 369]. [cite_start]This project uncovers actionable insights across ride demand, cancellation patterns, revenue generation, and overall service quality using a combined stack of **Google Sheets**, **SQL**, and **Power BI**[cite: 369, 370].

---

## 📌 Project Objectives
[cite_start]The primary goal of this project is to evaluate platform performance and generate data-backed strategies to maximize revenue and enhance operational efficiency[cite: 591].
* [cite_start]**Ride Trends:** Monitor booking patterns and demand fluctuations over time[cite: 380, 381].
* [cite_start]**Cancellations:** Deep-dive into driver and customer cancellation behaviors to identify operational friction[cite: 382, 383].
* [cite_start]**Revenue Analysis:** Track booking values and understand customer choices regarding payment methods[cite: 384, 385, 595].
* [cite_start]**Service Quality:** Assess vehicle types, ride distances, and feedback trends through ratings[cite: 386, 387, 598].

---

## 🛠️ Tools & Technologies Used
* [cite_start]**Google Sheets:** Used for initial data cleaning, handling missing or inconsistent entries, and preprocessing data for ingestion[cite: 619, 620].
* [cite_start]**SQL:** Utilized for data extraction, joining tables, filtering, running complex business aggregations, and performance metrics tracking[cite: 624, 625, 626].
* [cite_start]**Power BI:** Built interactive dashboards, defined key performance indicators (KPIs), and prepared high-impact visualizations for executive reporting[cite: 630, 631, 632].

---

## 📈 Key Performance Indicators (KPIs)
* [cite_start]**Total Bookings:** 103,024 rides [cite: 634]
* [cite_start]**Total Booking Value:** ₹35 Million+ [cite: 634]
* [cite_start]**Successful Bookings:** 63,967 rides [cite: 634]
* [cite_start]**Success Rate:** 62.09% [cite: 634]
* [cite_start]**Cancelled Bookings:** 28,933 rides [cite: 634]
* [cite_start]**Cancellation Rate:** 28.08% [cite: 634]

---

## 🔍 SQL Analysis Performed
The following core business metrics and operational scenarios were evaluated using SQL queries:

1. [cite_start]**Successful Ride Retrieval:** Extracted all records where the booking status was marked complete[cite: 639].
2. [cite_start]**Average Ride Distance by Vehicle Type:** Discovered that **Prime Sedan** (~15.76 km) leads long distances, while **Auto** averages significantly shorter distances (~6.24 km)[cite: 640, 641, 523].
3. [cite_start]**Total Customer Cancellations:** Counted and separated customer-driven cancellations (Total: 10,499)[cite: 642, 643].
4. [cite_start]**Top 5 Customers by Frequency:** Isolated high-value power users based on booking volumes (e.g., Top user `CID954071` completed 5 rides)[cite: 644, 645].
5. [cite_start]**Specific Driver Cancellations:** Filtered driver drop-offs caused by personal and vehicle-related limitations (Total: 6,542)[cite: 646, 647].
6. [cite_start]**Rating Ranges for Prime Sedan:** Found max and min driver ratings (Max: 5, Min: 3)[cite: 649, 650].
7. [cite_start]**Average Customer Ratings:** Computed average ratings by category, confirming consistent platform satisfaction across segments (~4.0/5)[cite: 651, 652, 705].
8. [cite_start]**Total Platform Revenue:** Aggregated total revenue strictly generated from fully completed trips (₹35,080,467)[cite: 653, 655].

---

## 💡 Key Dashboard Insights
* [cite_start]**Operational Bottleneck:** While the platform retains a solid 62%+ success rate, nearly **1/3rd of bookings fail** due to cancellations, serving as the main operational challenge[cite: 467, 579].
* [cite_start]**Cancellation Drivers:** More than 55% of customer cancellations are triggered by driver issues, primarily **"Driver not moving"** and **"Driver asked to cancel"**[cite: 548, 687, 688]. [cite_start]Driver cancellations are heavily influenced by vehicle/personal issues[cite: 696].
* [cite_start]**Payment Preferences:** Cash remains highly popular (₹19M), closely followed by digital payments via **UPI (₹14M)**, proving a growing affinity for cashless transactions[cite: 491, 493, 680].
* [cite_start]**Consistent Quality:** Both customer and driver average ratings hold stable at roughly **4.0/5**, signaling positive customer sentiment despite cancellation hurdles[cite: 703, 705, 707].

---

## 🚀 Business Recommendations
1. [cite_start]**Optimize Cancellation Metrics:** Introduce penalties for repetitive non-essential driver cancellations and monitor live vehicle positions to solve "driver not moving" scenarios[cite: 711, 712].
2. [cite_start]**Support Drivers:** Run vehicle quality check-ups (like AC performance maintenance) and design better driver incentives to drop operational failure rates[cite: 716, 725].
3. [cite_start]**Boost Digital Transactions:** Promote exclusive cashback offers or targeted subscription perks for users utilizing UPI and digital wallets[cite: 721, 722].
4. [cite_start]**Customer Loyalty Strategy:** Incentivize the identified top 5 high-value ride customers using tailored rewards to boost repeat customer retention[cite: 681, 684].

---

## 📂 Repository Structure
```text
├── Data/                   # Raw & Cleaned Dataset (CSV/Excel)
├── SQL_Queries/            # SQL scripts containing business problem solutions
├── Dashboards/             # Power BI Dashboard file (.pbix)
├── Reports/                # PDF Report & Presentation summary files
└── README.md               # Project documentation
