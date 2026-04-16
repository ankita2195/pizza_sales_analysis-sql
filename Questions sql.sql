# Top 5 customers

SELECT Customer_id, SUM(tran_amount )sales
FROM trxn
GROUP BY Customer_id
ORDER BY sales DESC
LIMIT 5;

SELECT response, COUNT(*) count
FROM rsp
GROUP BY response;

# First purchase year of each customer. This shows that there were no new customers in 2014 and 2015.

SELECT YEAR(MIN(STR_TO_DATE(trans_date, '%d-%b-%y'))) year, t.customer_id cust
FROM trxn t
LEFT JOIN rsp r 
ON t.customer_id = r.customer_id
WHERE response IS NOT NULL
GROUP BY cust;

