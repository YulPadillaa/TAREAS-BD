--extra
--ESTA TAREA SE HIZO EN EQUIPO CON ELISA Y ALEJANDRA 
SELECT 
	customer_id,
	TO_CHAR(order_date,'YYYY-MM') AS month,
	AVG(delta_order_price) AS monthly_average_delta_order_price
FROM(
	SELECT
		o.customer_id,
		o.order_date,
		(1-od.discount)*(od.unit_price*od.quantity) AS order_price,
		(1-od.discount)*(od.unit_price*od.quantity) 
			- LAG((1-od.discount)*(od.unit_price*od.quantity))
			OVER (PARTITION BY o.customer_id ORDER BY o.order_date) 
				AS delta_order_price 
	FROM orders o
	JOIN order_details od ON o.order_id = od.order_id
)AS a
GROUP BY 
	customer_id,
	month
ORDER BY
	customer_id,
	month;
