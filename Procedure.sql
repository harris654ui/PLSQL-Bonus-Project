CREATE OR REPLACE Procedure generate_performance(
p_date IN DATE
) IS
v_bonus     NUMBER;
v_bonus_pct  NUMBER;

BEGIN

DBMS_OUTPUT.PUT_LINE('Employee Performance Report: ');
DBMS_OUTPUT.PUT_LINE('---------------------------------------------');

For emp in (
Select E.employee_id,
       E.first_name,
       E.last_name,
       E.salary,
       P.performance_grade,
       P.review_period
From HR.Employees E
Join hr.performance_reviews P
on E.employee_id = P.employee_id
Where p.review_period = p_Date
)
LOOP
--Calculate Bonus on respective performance grade
IF EMP.performance_grade = 'A' THEN
            v_bonus_pct := 0.20;

     ELSIF emp.performance_grade = 'B' THEN
            v_bonus_pct := 0.10;   

        ELSIF emp.performance_grade = 'C' THEN
            v_bonus_pct := 0.05;   

        ELSIF emp.performance_grade = 'D' THEN
            v_bonus_pct := 0.02;   

        ELSE  -- 
            v_bonus_pct := 0;
        END IF;
V_bonus := emp.salary * v_bonus_pct;

-- Print Output
 DBMS_OUTPUT.PUT_LINE(
            emp.employee_id || ' - ' ||
            emp.first_name || ' ' ||
            emp.last_name || ' | Grade: ' ||
            emp.performance_grade || ' | Bonus: ' ||
            v_bonus
        );

END LOOP;

END;
