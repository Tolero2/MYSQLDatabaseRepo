/* --------------------
   Case Study Questions
   --------------------*/

-- 1. What is the total amount each customer spent at the restaurant?
-- 2. How many days has each customer visited the restaurant?
-- 3. What was the first item from the menu purchased by each customer?
-- 4. What is the most purchased item on the menu and how many times was it purchased by all customers?
-- 5. Which item was the most popular for each customer?
-- 6. Which item was purchased first by the customer after they became a member?
-- 7. Which item was purchased just before the customer became a member?
-- 8. What is the total items and amount spent for each member before they became a member?
-- 9.  If each $1 spent equates to 10 points and sushi has a 2x points multiplier - how many points would each customer have?
-- 10. In the first week after a customer joins the program (including their join date) they earn 2x points on all items, not just sushi - how many points do customer A and B have at the end of January?

-- Query Solution:
-- 1. What is the total amount each customer spent at the restaurant?
SELECT s.customer_id AS Customer, SUM(m.price) AS `Total spending`
FROM dannys_diner.menu m JOIN dannys_diner.sales s
on (m.product_id=s.product_id)
GROUP  BY Customer;

-- How many days has each customer visited the restaurant?
SELECT s.customer_id AS Customer, COUNT(s.order_date) AS `No. of Visits`
FROM sales s
GROUP BY Customer;

-- What was the first item from the menu purchased by each customer?
-- WITH cte_Customer AS ( 
-- SELECT m.customer_id,m.join_date, s.order_date, s.product_id FROM dannys_diner.members m JOIN dannys_diner.sales s
-- ON (m.customer_id=s.customer_id)
-- WHERE m.join_date= s.order_date )
-- SELECT c.customer_id AS Customer, m.product_name AS `First Item`, m.price
-- FROM cte_Customer c JOIN menu m
-- ON(c.product_id =m.product_id);

WITH cte_Customer AS ( 
SELECT s.customer_id, s.order_date, s.product_id FROM  dannys_diner.sales s
)
SELECT c.customer_id AS Customer, m.product_name AS `First Item`, m.price
FROM cte_Customer c JOIN menu m
ON(c.product_id =m.product_id);

select * from members

select * from s

