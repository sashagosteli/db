USE mobil_telephones;
SELECT * FROM mobil_phones;

INSERT INTO mobil_phones(id, product, manufacture, product_count, price) VALUES (1, "iPhone X", "Apple", 3, 76000); 
INSERT INTO mobil_phones(id, product, manufacture, product_count, price) VALUES (2, "iPhone 8", "Apple", 2, 51000);
INSERT INTO mobil_phones(id, product, manufacture, product_count, price) VALUES (3, "Galaxy s9", "Samsung", 2, 56000);  
INSERT INTO mobil_phones(id, product, manufacture, product_count, price) VALUES (4, "Galaxy s8", "Samsung", 1, 41000); 
INSERT INTO mobil_phones(id, product, manufacture, product_count, price) VALUES (5, "P20 Pro", "Huawei", 5, 36000); 

SELECT product, manufacture, price
FROM mobil_phones
WHERE product_count > 2;

SELECT *
FROM mobil_phones
WHERE manufacture = "Samsung";
