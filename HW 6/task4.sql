	-- 1 
    SELECT restBill.cust_name
    FROM restBill
    JOIN restStaff
    ON restBill.waiter_no = restStaff.headwaiter
    WHERE restBill.bill_total > 450 AND restStaff.headwaiter = (SELECT staff_no FROM restStaff WHERE first_name = 'Charles');
    
    -- 2 
    SELECT first_name, surname 
    FROM restBill
    JOIN restStaff
    ON restStaff.headwaiter = restBill.waiter_no
    WHERE cust_name = "Nerida " AND bill_date = 160111;
    
    -- 3 
    SELECT cust_name
	FROM restBill
	WHERE bill_total = (SELECT MIN(bill_total) FROM restBill);
    
    -- 4 
    SELECT first_name, surname
	FROM restStaff
	WHERE staff_no NOT IN (SELECT waiter_no FROM restBill);
    
    -- 5
    SELECT restBill.cust_name, restStaff.first_name, restStaff.surname, restRoom_management.room_name
    FROM restBill
    JOIN restStaff
    ON restBill.waiter_no = restStaff.headwaiter
    JOIN restRest_table
    ON restBill.table_no = restRest_table.table_no
    WHERE restBill.bill_total = (SELECT MAX(bill_total) FROM restBill);