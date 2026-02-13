
PL/SQL Employee Performance Management System

This is a PL/SQL project designed to calculate employee performance bonuses using Oracle's HR schema. The project demonstrates table creation, data relationships, and bonus calculation logic using PL/SQL procedures.

Project Overview

This project automates performance-based bonus calculation for employees. It evaluates employee performance grades for a specific review period and calculates a bonus percentage based on the assigned grade.

The procedure joins data from the existing HR.employees table with a custom performance_reviews table and generates a formatted performance report using DBMS_OUTPUT.

Key features include:

Performance grade tracking per review period

Automatic bonus calculation based on grade

Use of joins between HR schema tables and custom tables

Reusable PL/SQL procedure that accepts a review date parameter

Clean output report formatting

Technologies Used

Project was made using PL/SQL in TOAD for Oracle, utilizing the HR schema in Oracle Database.
