SELECT * FROM PRODUCT_DATASET;
SELECT * FROM sales_dataset;
--- JOINS----
SELECT P.PRODUCTID,P.PRODUCTNAME,P.UNITPRICE,S.CUSTOMERNAME,S.SALESAMOUNT
FROM product_dataset AS P INNER JOIN sales_dataset AS S ON P.PRODUCTID=S.PRODUCTID;
SELECT P.PRODUCTID,P.PRODUCTNAME,P.UNITPRICE,S.CUSTOMERNAME,S.SALESAMOUNT
FROM product_dataset AS P LEFT JOIN sales_dataset AS S ON P.PRODUCTID=S.PRODUCTID;
SELECT P.PRODUCTID,P.PRODUCTNAME,P.UNITPRICE,S.CUSTOMERNAME,S.SALESAMOUNT
FROM product_dataset AS P RIGHT JOIN sales_dataset AS S ON P.PRODUCTID=S.PRODUCTID;
-- FULL OUTER JOINT
show tables;
select * from employee_dataset;
select * from colors_dataset;
select * from clothes_dataset;
SELECT
    e.emp_name AS employee,
    m.emp_name AS manager
FROM employee_dataset AS e
JOIN employee_dataset AS m
    ON e.manager_id = m.emp_id;
  -- cross join ---
  select cl.product_name,cLR.color_name from clothes_DATASET AS CL CROSS JOIN COLORS_DATASET AS CLR;
