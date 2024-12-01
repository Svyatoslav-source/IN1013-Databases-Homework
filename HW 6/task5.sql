
    -- 1
    SELECT restStaff.first_name, restStaff.surname, restBill.bill_date, COUNT(restBill.bill_no) AS num_bills
	FROM restBill 
	JOIN restStaff 
	ON restBill.waiter_no = restStaff.staff_no
	GROUP BY restStaff.first_name, restStaff.surname, restBill.bill_date
	HAVING COUNT(restBill.bill_no) >= 2;
    
    -- 2
    SELECT restRest_table.room_name, COUNT(restRest_table.table_no) AS num_large_tables
	FROM restRest_table 
	WHERE restRest_table.no_of_seats > 6
	GROUP BY restRest_table.room_name;
    
    -- 3
    SELECT restRest_table.room_name, SUM(restBill.bill_total) AS total_bills
	FROM restBill 
	JOIN restRest_table 
	ON restBill.table_no = restRest_table.table_no
	GROUP BY restRest_table.room_name;
    
    -- 4
    SELECT restStaff.first_name AS headwaiter_first_name, restStaff.surname AS headwaiter_surname, SUM(restBill.bill_total) AS total_bills
	FROM restStaff 
	JOIN restStaff 
	ON restStaff.staff_no = restStaff.headwaiter
	JOIN restBill 
	ON restStaff.staff_no = restBill.waiter_no
	GROUP BY restStaff.first_name, restStaff.surname
	ORDER BY total_bills DESC;
    
    -- 5 
    SELECT restBill.cust_name, AVG(restBill.bill_total) AS avg_spent
	FROM restBill 
	GROUP BY restBill.cust_name
	HAVING AVG(restBill.bill_total) > 400;
    
    -- 6
    SELECT restStaff.first_name, restStaff.surname, restBill.bill_date, COUNT(restBill.bill_no) AS num_bills
	FROM restBill 
	JOIN restStaff 
	ON restBill.waiter_no = restStaff.staff_no
	GROUP BY restStaff.first_name, restStaff.surname, restBill.bill_date
	HAVING COUNT(restBill.bill_no) >= 3;
    
    
    