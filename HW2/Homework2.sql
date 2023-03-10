SELECT invoice_number, invoice_total FROM invoices;
SELECT invoice_id, invoice_total FROM invoices WHERE invoice_due_date < payment_date;
SELECT invoice_number, vendor_id, invoice_total FROM invoices WHERE payment_date BETWEEN '2018-08-01' AND '2018-08-31';
SELECT invoice_id, vendor_id, invoice_total FROM invoices WHERE payment_date IS NULL ORDER BY invoice_total DESC LIMIT 5;
SELECT invoice_id, invoice_total, payment_total FROM invoices WHERE payment_total < invoice_total AND payment_total != '0.00';
SELECT invoice_number, invoice_date, invoice_total - payment_total - credit_total AS 'balance_due', payment_date FROM invoices WHERE payment_date IS NULL;
SELECT invoice_number, invoice_total, invoice_total - payment_total - credit_total AS balance_due FROM invoices WHERE invoice_total - payment_total - credit_total > 100 ORDER BY invoice_total - payment_total - credit_total DESC; 
SELECT DATE_FORMAT(current_date, '%m/%d/%Y') AS 'current_date';
SELECT '$100,000' AS starting_principle, '3.5%' AS interest, (100000 * .035) + 100000 AS principle_plus_interest;
SELECT vendor_state FROM vendors GROUP BY vendor_name HAVING COUNT(*) = 1;
SELECT vendor_name, vendor_contact_last_name, vendor_contact_first_name FROM vendors ORDER BY vendor_contact_last_name ASC, vendor_contact_first_name ASC;
SELECT vendor_name, vendor_city, vendor_state, vendor_zip_code FROM vendors WHERE vendor_zip_code REGEXP ('^9+');
SELECT vendor_name, vendor_city FROM vendors WHERE vendor_phone IS NULL;
SELECT CONCAT(vendor_contact_first_name, ' ', vendor_contact_last_name) AS full_name FROM vendors WHERE vendor_contact_last_name REGEXP ('^[A-H]+') ORDER BY vendor_contact_last_name ASC, vendor_contact_first_name ASC;
SELECT invoice_due_date AS 'Due Date', invoice_total AS 'Invoice Total', invoice_total * .1 AS '10%', (invoice_total *.1) + invoice_total AS 'Plus 10%' FROM invoices;
SELECT invoice_id, line_item_amount, line_item_description FROM invoice_line_items WHERE line_item_amount > 100;