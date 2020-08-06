-- USE sql_store;

-- SELECT * (Column)
-- FROM customers (Table)
-- WHERE customer_id = 1
-- ORDER BY first_name

-- ------------SELECT-------------------
-- SELECT
	-- last_name,
    -- first_name,
    -- points,
    -- (points + 10) * 100 AS discount_factor
-- FROM customers

-- SELECT DISTINCT state // DISTINCT used to remove duplicates
-- FROM customers

-- -----------LOGIC OPERATORS-------------
-- NOT
-- AND
-- OR
-- BETWEEN
		-- WHERE points BETWEEN 1000 AND 3000
        
-- IN // Usar vários OR's é mto zuado em sql, então usa-se o IN.
-- 		WHERE state IN ('VA', 'FL', 'GA') negação NOT IN

-- LIKE
	-- WHERE last_name LIKE 'b%' '%b%' '%b' '__b'
    -- // % = any number of characters
    -- // _ = single character
-- ---------------REGEXP-----------------
-- WHERE last_name REGEXP 'field$|mac|rose'
-- ^field = o nome começa com field
-- field$ = termina com field
-- | = OR dentro do regexp

-- WHERE last_name REGEXP '[gim]e' // isso é igual a ge, ie, me.
-- WHERE last_name REGEXP 'e[gim]' // isso é igual a eg, ei, em.
-- WHERE last_name REGEXP 'e[a-h]' // de a até h.

-- ---------------NULL-----------------
-- WHERE phone IS NULL // Procura por todos os 'phone' = NULL

-- --------------LIMIT-------------------
-- LIMIT 6, 3 // Objetos 7, 8 e 9. (ignora 6 e pega os proximos 3)
-- SELECT points FROM customers
-- ORDER BY points DESC
-- LIMIT 3

-- ----------------JOIN--------------------
-- // Quando for composity primary key, tem que usar
-- // AND em todas.
-- SELECT * 
-- FROM order_items oi
-- JOIN order_item_notes oin
	-- ON	oi.order_id = oin.order_id
	-- AND oi.product_id = oin.product_id

-- SELECT 
	-- o.order_date,
    -- c.first_name,
    -- sh.name,
    -- os.name
-- FROM orders o
-- LEFT JOIN customers c
		-- ON o.customer_id = c.customer_id
-- LEFT JOIN shippers sh
		-- ON o.shipper_id = sh.shipper_id
-- LEFT JOIN order_statuses os
		-- ON o.status = os.order_status_id
-- ORDER BY os.name

-- SELECT 
	-- o.order_date,
    -- c.first_name,
    -- sh.name,
-- FROM orders o
-- LEFT JOIN customers c
		-- USING (customer_id) // SÓ PODE USAR USING QUANDO O NOME NAS DUAS TABLES FOREM IGUAIS.
-- LEFT JOIN shippers sh
		-- USING (shipper_id) //QUANDO FOR COMPOSITY PRIMARY KEY, É SÓ DAR VIRGULA E COLOCAR O OUTRO ID TAMBÉM.

-- SELECT 
	-- p.date,
    -- c.name,
    -- p.amount, 
    -- pm.name
-- FROM payments p
-- JOIN clients c USING (client_id)
-- JOIN payment_methods pm
	-- ON p.payment_method = pm.payment_method_id
    
-- select *
-- from products p, shippers sh //cross join - basicamente juntar tudo das duas tabelas.
-- order by p.name

-- ---------------------UNION--------------------------
-- SELECT customer_id, first_name, points, 'Bronze' AS type
-- FROM customers
-- WHERE points < 2000
-- UNION
-- SELECT customer_id, first_name, points, 'Silver' AS type
-- FROM customers
-- WHERE points BETWEEN 2000 AND 3000
-- UNION
-- SELECT customer_id, first_name, points, 'GOLD' AS type
-- FROM customers
-- WHERE points > 3000
-- ORDER BY first_name

-- ----------------------INSERT DATA--------------------
-- INSERT INTO customers											INSERT INTO customers (
-- VALUES(																first_name, last_name,
-- 	DEFAULT,															birth_date, adress,
--     "Jhon",															city, state)
--     "Smith",															VALUES(
--     "1990-01-01",														"Jhon", "Smith",
--     NULL,																"1990-01-01", "adress",
--     "adress",															"city", "CA" )
--     "city",															
--     "CA",															
--     DEFAULT )

-- INSERT INTO products (
-- 	name, quantity_in_stock,
--  unit_price )
-- VALUES
-- 	("name", 12, 12.12 ),
--  ("name2", 12, 12.12 ),
-- 	("name3", 12, 12.12 )

-- INSERT INTO orders_archived
-- SELECT * FROM orders
-- WHERE order_date < "2019-01-01"

-- -----------------LAST INSERT-------------------
-- SELECT last_insert_id()

-- -----------------UPDATE DATA-------------------
-- UPDATE invoices
-- SET payment_total = 0, payment_date = '2019-01-01'
-- WHERE invoice_id = // Mudar o "=" pra IN, caso retorne multiplos ID's.
				-- (SELECT client_id FROM clients 
				-- WHERE name = 'Myworks')

-- UPDATE invoices
-- SET payment_total = 0, payment_date = '2019-01-01'
-- WHERE client_id IN (3, 4)

-- UPDATE customers
-- SET points = points + 50
-- WHERE birth_date < '1990-01-01'

-- UPDATE orders
-- SET comments = 'Gold client'
-- WHERE comments IS NULL AND customer_id IN
-- 				(SELECT customer_id FROM customers
-- 				WHERE points > 3000)

-- -----------------DELETE-------------------
-- DELETE FROM invoices
-- WHERE client_id = (
-- 				SELECT * FROM clients
--                 WHERE name = 'Myworks' )

-- --------------COMPUTER PROJECT-------------
-- create table computer (
-- 	computer_id INT, computer_case_id INT, motherboard_id INT,
--     power_supply_id INT, processor_id INT, ram_id INT,
--     storage_device_id INT, video_card_id INT,
--     
--     primary key (computer_id, computer_case_id, motherboard_id,
-- 				power_supply_id, processor_id, ram_id,
--                 storage_device_id, video_card_id)
-- )

-- create table computers (
-- 			computer_id int not null auto_increment,
--             computer_case_id int not null,
-- 			motherboard_id int not null,
--             power_supply_id int not null,
--             processor_id int not null,
--             ram_id int not null,
--             storage_device_id int not null,
--             video_card_id int not null,
--             primary key(computer_id),
--             foreign key (computer_case_id) references computer_case(computer_case_id),
--             foreign key (motherboard_id) references motherboard(motherboard_id),
--             foreign key (power_supply_id) references power_supply(power_supply_id),
--             foreign key (processor_id) references processor(processor_id),
--             foreign key (ram_id) references ram(ram_id),
--             foreign key (storage_device_id) references storage_device(storage_device_id),
--             foreign key (video_card_id) references video_card(video_card_id)
--             ) ENGINE = INNODB;

-- insert into computers (
-- 					computer_case_id,
--                     motherboard_id,
--                     power_supply_id,
--                     processor_id,
--                     ram_id,
--                     storage_device_id,
--                     video_card_id)
-- values(4,2,2,4,5,1,1)












