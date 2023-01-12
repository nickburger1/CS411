SELECT NOW();
SHOW DATABASES;
USE ap;
SELECT * FROM vendors;
SELECT * FROM invoices;
SELECT vendor_name, invoice_id, payment_total
  FROM invoices, vendors
  WHERE vendors.vendor_id = invoices.vendor_id
  ORDER BY vendor_name;