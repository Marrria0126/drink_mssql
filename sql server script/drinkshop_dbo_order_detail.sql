create table order_detail
(
    id         int identity
        primary key,
    order_id   int  not null,
    product_id int  not null,
    quantity   int  not null,
    cost       real not null
)
go

INSERT INTO drinkshop.dbo.order_detail (id, order_id, product_id, quantity, cost) VALUES (3, 213241, 755, 1, 223124);
INSERT INTO drinkshop.dbo.order_detail (id, order_id, product_id, quantity, cost) VALUES (4, 19, 740, 1, 158);
INSERT INTO drinkshop.dbo.order_detail (id, order_id, product_id, quantity, cost) VALUES (5, 19, 733, 1, 152);
INSERT INTO drinkshop.dbo.order_detail (id, order_id, product_id, quantity, cost) VALUES (6, 20, 739, 1, 156);
INSERT INTO drinkshop.dbo.order_detail (id, order_id, product_id, quantity, cost) VALUES (7, 21, 735, 1, 152);
INSERT INTO drinkshop.dbo.order_detail (id, order_id, product_id, quantity, cost) VALUES (8, 22, 733, 1, 152);
INSERT INTO drinkshop.dbo.order_detail (id, order_id, product_id, quantity, cost) VALUES (9, 23, 738, 1, 45);
INSERT INTO drinkshop.dbo.order_detail (id, order_id, product_id, quantity, cost) VALUES (10, 23, 738, 1, 45);
INSERT INTO drinkshop.dbo.order_detail (id, order_id, product_id, quantity, cost) VALUES (11, 24, 734, 1, 22.09);
INSERT INTO drinkshop.dbo.order_detail (id, order_id, product_id, quantity, cost) VALUES (12, 25, 736, 1, 20.09);
INSERT INTO drinkshop.dbo.order_detail (id, order_id, product_id, quantity, cost) VALUES (13, 26, 738, 1, 20.09);