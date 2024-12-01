
    -- 1
    SELECT first_name, surname
    FROM restBill
    JOIN restStaff
    ON restBill.waiter_no = restStaff.staff_no
    WHERE cust_name = "Tanya Singh";
    
    -- 2
    SELECT room_date
    FROM restRoom_management
    JOIN restStaff 
    ON restRoom_management.headwaiter = restStaff.staff_no
    WHERE restStaff.first_name = "Charles" AND restRoom_management.room_name = 'Green' AND restRoom_management.room_date BETWEEN 160201 AND 160229;
	
    -- 3
    SELECT first_name, surname
    FROM restStaff
    WHERE headwaiter = (
    SELECT headwaiter
    FROM restStaff
    WHERE first_name = 'Zoe' AND surname = 'Ball') AND NOT (first_name = 'Zoe' AND surname = 'Ball');
    
    -- 4
    SELECT cust_name, bill_total, restStaff.first_name, restStaff.surname
    FROM restBill
    JOIN restStaff
    ON restBill.waiter_no = restStaff.staff_no
    ORDER BY restBill.bill_total DESC;
    
    -- 5
    SELECT first_name, surname
    FROM restBill
    JOIN restStaff 
    ON restBill.waiter_no = restStaff.staff_no
    WHERE restBill.table_no IN(SELECT table_no FROM restBill WHERE bill_no IN (00014, 00017));
    
    -- 6
    SELECT restStaff.first_name, restStaff.surname
	FROM restRoom_management 
	JOIN restRest_table  
	ON restRoom_management.room_name = restRest_table.room_name
	JOIN restBill  
	ON restBill.table_no = restRest_table.table_no
	JOIN restStaff 
	ON restBill.waiter_no = restBill.staff_no
	WHERE restRoom_management.room_name = 'Blue' AND restRoom_managemet.room_date = 160312

	UNION

	SELECT restStaff.first_name, restStaff.surname
	FROM restRoom_management 
	JOIN restStaff  
	ON restRoom_manangement.headwaiter = restStaff.staff_no
	WHERE restRoom_management.room_name = 'Blue' AND restRoom_management.room_date = 160312;
    
	
    
	
    

