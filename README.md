# 📦 **Zepto SQL Analysis Project**

*A Clean, Structured, Multi-File SQL Portfolio Project*

Welcome to my **first SQL portfolio project**, where I analyze a real-world style Zepto product dataset using step-by-step SQL scripts.
The project covers the full data workflow — **schema → cleaning → analysis (basic → advanced)** — in an organized, industry-style format.

---

## ✨ **Features**

* 🚀 Full SQL workflow (schema → cleaning → analysis)
* 🗂️ Clean, modular file structure
* 📊 Realistic retail analytics
* 🧠 Uses window functions, rankings, CTEs, discounts, and margin analysis
* 🎓 Beginner-friendly yet industry-ready

---

## 📁 **Project Structure**

```
├── 01_Create_Schema.sql
├── 02_Cleaning.sql
├── 03_Basic_Analysis.sql
├── 04_Intermediate.sql
├── 05_Advanced.sql
├── zepto.csv
├── README.md
└── LICENSE
```

---

## 📄 **File Descriptions**

| File                      | Description                                                    |
| ------------------------- | -------------------------------------------------------------- |
| **01_Create_Schema.sql**  | Defines database & table schema.                               |
| **02_Cleaning.sql**       | Handles duplicates, missing values, and price validation.      |
| **03_Basic_Analysis.sql** | Basic queries: counts, category summaries, out-of-stock items. |
| **04_Intermediate.sql**   | Deeper insights: inventory value, discounts, price metrics.    |
| **05_Advanced.sql**       | Window functions, ranking, margins, top-N analysis.            |
| **zepto.csv**             | Raw dataset used for all analysis.                             |
| **LICENSE**               | Open-source license.                                           |
| **README.md**             | Full project documentation.                                    |

---

## 🛠️ **Tech Used**

* **MySQL**
* **SQL Window Functions**
* **Data Cleaning & EDA**
* **CSV-based Dataset**

---

## 🚀 **Setup Instructions**

### 1️⃣ Create DB

```sql
CREATE DATABASE project;
USE project;
```

### 2️⃣ Run Schema

```sql
SOURCE 01_Create_Schema.sql;
```

### 3️⃣ Import Data

```sql
LOAD DATA LOCAL INFILE 'zepto.csv'
INTO TABLE zepto
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
IGNORE 1 LINES;
```

### 4️⃣ Run Cleaning

```sql
SOURCE 02_Cleaning.sql;
```

### 5️⃣ Run Analysis Scripts

```sql
SOURCE 03_Basic_Analysis.sql;
SOURCE 04_Intermediate.sql;
SOURCE 05_Advanced.sql;
```

---

## 📊 **Key Insights**

* Category-wise inventory value
* Most discounted products
* Highest & lowest selling price per category
* Profit margins
* Price-per-gram analysis
* Category-wise ranking

---

## 👤 **Author**

**Angela Topno**
SQL | Power BI | Excel | Data Analytics
Always learning. Always building. 🚀

---

