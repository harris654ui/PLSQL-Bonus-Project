### PL/SQL Employee Performance Management System

This is a PL/SQL project designed to calculate employee performance bonuses using Oracle's HR schema. The project demonstrates table creation, data relationships, and bonus calculation logic using PL/SQL procedures.

---
## Project Overview

This project automates performance-based bonus calculation for employees. It evaluates employee performance grades for a specific review period and calculates a bonus percentage based on the assigned grade.

The procedure joins data from the existing HR.employees table with a custom performance_reviews table and generates a formatted performance report using DBMS_OUTPUT.

---
## Key features include:

- Performance grade tracking per review period

- Automatic bonus calculation based on grade

- Use of joins between HR schema tables and custom tables

- Reusable PL/SQL procedure that accepts a review date parameter

- Clean output report formatting

---
## Technologies Used

Project was made using PL/SQL in TOAD for Oracle, utilizing the HR schema in Oracle Database.

---
## Database Setup

The following table and procedure were created in this project:

- performance_reviews (Table)
- generate_performance (Stored Procedure)

---
## Bonus Calculation Logic

The procedure applies bonus percentages based on performance grade:

A → 20% bonus

B → 10% bonus

C → 5% bonus

D → 2% bonus

Any other grade → 0% bonus

Bonus Formula: `Bonus = Salary × Bonus Percentage`

---
## Usage

- Ensure the HR schema is installed and contains employee data.
- Create the performance_reviews table.
- Insert performance records for employees with valid review dates.
- Compile the generate_performance procedure in an Oracle environment.
- Enable DBMS Output in TOAD.
- Execute the procedure for a specific review period:



