#  Uber EDA Project

This project performs Exploratory Data Analysis (EDA) on Uber ride request data using **Excel**, **SQL**, and **Python (Pandas, Seaborn)**. The goal is to identify patterns in demand, cancellations, and service availability to help Uber improve operations and customer satisfaction.

---

##  Tools Used

-  **Excel**: Data cleaning, formatting, and basic visual dashboards  
-  **SQL (SQLite DB Browser)**: Querying for ride patterns and insights  
-  **Python**: Advanced EDA with `pandas`, `matplotlib`, and `seaborn`

---


##  Steps Performed

###  Excel:
- Cleaned raw CSV file  
- Formatted `timestamp` columns  
- Added:
  - `Request Hour` (0–23)
  - `Time Slot` (Morning, Evening, etc.)
  - `Trip Type` (Pickup + Status)  
- Created charts:
  - Pie chart (Ride Status)
  - Bar/Line charts (Requests per Hour)
  - Stacked bar (Completed vs Cancelled)
  - Pickup Point comparison

---

###  SQL:
- Imported cleaned CSV into SQLite  
- Queried:
  - Total requests per hour  
  - Cancellations by Pickup Point  
  - Completed vs Cancelled by Hour  
  - Requests by Status  

---

###  Python:
- Used Pandas and Seaborn to create:
  - Countplots
  - Histogram
  - Boxplot & Violin Plot
  - Heatmap & Pairplot
  - Swarm Plot  
- Handled missing values with flags
- Generated 10 unique visualizations

---

##  Key Insights

-  Peak hours: 8 AM – 10 AM and 5 PM – 9 PM  
-  Airport had more ride requests but also higher cancellations  
-  No Cars Available mainly during peak demand  
-  Worst service during Late Night and Early Morning

---

##  Business Suggestions

- Increase driver availability at high-demand times/locations  
- Offer driver incentives during low-supply hours  
- Improve scheduling using request trends  
- Add customer coupons when rides fail

---

##  How Missing Values Were Handled

| Column         | Missing | Explanation                     |
|----------------|---------|---------------------------------|
| `Driver id`    | 2650    | No Cars Available (no driver)   |
| `Drop timestamp` | 3914 | Cancelled or No Cars rides      |

 These rows were **not removed** — they provided key insights.

---

##  How to Run

1. Clone the repo  
2. Install dependencies: 




