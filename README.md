### PL/SQL Employee Performance Management System

This is a PL/SQL project that is designed to calculate employee bonuses based on their performance throughout a review period. This project was built using Oracle's HR schema. 

---
## Project Overview

This project automates performance based bonus calculation for employees. It evaluates employee performance grades for a specific review period and calculates a bonus percentage based on the designated grade.

The procedure joins data from the pre existing HR.employees table with the performance_reviews table made in the project to generate the output.

---
## Key features include:

- Performance grade tracking per review period

- Automatic bonus calculation based on grade

- Reusable PL/SQL procedure that accepts a review date parameter

---
## Technologies Used

Project was made using PL/SQL in TOAD for Oracle, utilizing the HR schema in Oracle Database.

---
## Database Setup

The following table and procedure were created in this project:

- performance_reviews (Table)
#### Code for the table is available in the Table.sql file in the repo.

- generate_performance (Stored Procedure)
#### Code for the procedure is available in the Procedure.sql file in the repo.
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
- Ensure Oracle is installed within system
- Ensure the HR schema is installed and contains employee data.
- Create the performance_reviews table.
- Insert performance records for employees with valid review dates.
- Compile the generate_performance procedure in an Oracle environment.
- Enable DBMS Output in TOAD.
- Execute the procedure for a specific review period:



