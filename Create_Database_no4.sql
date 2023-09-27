-- a.
CREATE DATABASE "KALBE"
    WITH
    OWNER = postgres
    ENCODING = 'UTF8'
    CONNECTION LIMIT = -1
    IS_TEMPLATE = False;

-- b.
CREATE TABLE public."Inventory"
(
    "Item_code" numeric PRIMARY KEY,
    "Item_name" character varying,
    "Item_price" numeric,
    "Item_total" numeric,
    PRIMARY KEY ("Item_code")
);

-- c.
INSERT INTO Inventory (Item_code, Item_name, Item_price, Item_total)
VALUES ("2341", "Promag Tablet", 3000, 100),
       ("2342", "Hydro Coco 250ML", 7000, 20),
       ("2343", "Nutrive Benecol 100ML", 20000, 30),
       ("2344", "Blackmores Vit C 500Mg", 95000, 45),
       ("2345", "Entrasol Gold 370G", 90000, 120);

-- d.
SELECT *
FROM "Inventory"
ORDER BY "Item_total" DESC
LIMIT 1;

-- e. Update
UPDATE "Inventory"
SET "Item_price" = 150000
WHERE "Item_total" = (SELECT MAX("Item_total") FROM "Inventory");

-- f. What will happen if we insert another Item_name with Item_code of 2343 into the table?
--  muncul error berupa 'duplicate key value violates unique constraint "inventory_pkey"

-- g.
DELETE FROM "Inventory"
WHERE ("Item_total") = (
	SELECT MIN("Item_total")
	FROM "Inventory");