# 📦 Database Technology Project – Porter Delivery Time Analysis

This project focuses on designing a normalized relational database based on a dataset related to porter delivery times. The aim is to ensure the data is well-structured through normalization (up to **Third Normal Form - 3NF**), then model the schema using an **Entity Relationship Diagram (ERD)**, and finally implement the design with **SQL code**.

---

## 📌 Project Objectives

- Normalize the porter delivery time dataset to **3NF**
- Design an **Entity Relationship Diagram (ERD)** based on the normalized data
- Write and test **SQL code** to create the database schema and relationships

---
## 🔄 Data Normalization

The dataset was normalized in the following stages:

### ➤ First Normal Form (1NF)
- Removed repeating groups and ensured atomic values per column.

### ➤ Second Normal Form (2NF)
- Removed partial dependencies by ensuring all non-key attributes are fully dependent on the primary key.

### ➤ Third Normal Form (3NF)
- Removed transitive dependencies to ensure all non-key attributes depend only on the primary key.
