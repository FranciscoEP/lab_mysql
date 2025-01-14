INSERT INTO car_dealership.cars(vin, manufacturer, model, `year`, color)
VALUES('ZM8G7BEUQZ97IH46V',	'Peugeot',	'Rifter',	2019,	'Red'),
('RKXVNNIHLVVZOUB4M',	'Ford',	'Fusion',	2018,	'White'),
('HKNDGS7CU31E9Z7JW',	'Toyota',	'RAV4',	2018,	'Silver'),
('DAM41UDN3CHU2WVF6',	'Volvo',	'V60'	,2019,	'Gray'),
('DAM41UDN3CHU2WVF6',	'Volvo',	'V60 Cross Country',	2019,	'Gray');

INSERT INTO car_dealership.customers(customer_id, first_name, last_name, phone, address, city, state, country, postal_code, email)
VALUES('10001',	'Pablo', 'Picasso',	'+34 636 17 63 82',	'Paseo de la Chopera 14', 'Madrid',	'Madrid',	'Spain'	,'28045', '-'),
('20001',	'Abraham', 'Lincoln',	'+1 305 907 7086'	,	'120 SW 8th St'	,'Miami',	'Florida',	'United States',	'33130', '-'),
('30001',	'Napoléon', 'Bonaparte',	'+33 1 79 75 40 00'	,	'40 Rue du Colisée',	'Paris',	'Île-de-France',	'France',	'75008', '-');

INSERT INTO car_dealership.invoices(invoice_number, `date`, car_id, customer_id, seller_id)
VALUES('731166526',	'2018-12-21',	3,	0,	5),
 ('271135104',	'2019-01-22',	2,	2,  7);

