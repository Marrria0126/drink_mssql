create table cart
(
    id          int identity
        primary key,
    product_id  int,
    quantity    int,
    cost        float,
    user_id     int,
    create_time datetime2 not null,
    update_time datetime2 not null
)
go

INSERT INTO drinkshop.dbo.cart (id, product_id, quantity, cost, user_id, create_time, update_time) VALUES (2, 733, 3, 456, 2, N'2021-03-20 23:14:42.1804824', N'2021-03-20 23:14:42.1804824');
INSERT INTO drinkshop.dbo.cart (id, product_id, quantity, cost, user_id, create_time, update_time) VALUES (3, 733, 3, 456, 2, N'2021-03-20 23:14:46.7332984', N'2021-03-20 23:14:46.7332984');
INSERT INTO drinkshop.dbo.cart (id, product_id, quantity, cost, user_id, create_time, update_time) VALUES (11, 740, 1, 158, 20, N'2021-03-21 01:12:02.2495963', N'2021-03-21 01:12:02.2495963');