SELECT date(sale_time) as sale_date, sale_time, ospos_sales_items.sale_id, comment, 
		
		payments.payment_type, payments.sale_payment_amount, item_location, customer_id, employee_id,
		
		ospos_items.item_id, supplier_id, quantity_purchased, item_cost_price, item_unit_price, SUM(percent) as item_tax_percent,

		discount_percent, 
		ROUND((item_unit_price*quantity_purchased-item_unit_price*quantity_purchased*discount_percent/100)*(1 - (SUM(1 - 100/(100+percent)))),2) as subtotal,

		ospos_sales_items.line as line, serialnumber, ospos_sales_items.description as description,

		ROUND((item_unit_price*quantity_purchased-item_unit_price*quantity_purchased*discount_percent/100)*1, 2) as total,

		ROUND((item_unit_price*quantity_purchased-item_unit_price*quantity_purchased*discount_percent/100)*(SUM(1 - 100/(100+percent))), 2) as tax,

		ROUND((item_unit_price*quantity_purchased-item_unit_price*quantity_purchased*discount_percent/100)- (item_cost_price*quantity_purchased), 2) as profit,

		(item_cost_price*quantity_purchased) as cost,

		invoice_number

		FROM ospos_sales_items

		INNER JOIN ospos_sales ON  ospos_sales_items.sale_id=ospos_sales.sale_id

		INNER JOIN ospos_items ON  ospos_sales_items.item_id=ospos_items.item_id

		INNER JOIN (SELECT sale_id, SUM(payment_amount) AS sale_payment_amount,

		GROUP_CONCAT(CONCAT(payment_type,' ',payment_amount) SEPARATOR ', ') AS payment_type FROM ospos_sales_payments GROUP BY sale_id) AS payments 

		ON ospos_sales_items.sale_id=payments.sale_id		

		LEFT OUTER JOIN ospos_suppliers ON  ospos_items.supplier_id=ospos_suppliers.person_id

		LEFT OUTER JOIN ospos_sales_items_taxes ON  ospos_sales_items.sale_id=ospos_sales_items_taxes.sale_id and ospos_sales_items.item_id=ospos_sales_items_taxes.item_id and ospos_sales_items.line=ospos_sales_items_taxes.line

		GROUP BY sale_id, item_id, line