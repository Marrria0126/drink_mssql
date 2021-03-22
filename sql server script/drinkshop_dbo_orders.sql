create table orders
(
    id           int identity
        primary key,
    user_id      int,
    login_name   nvarchar(255),
    user_address nvarchar(255),
    cost         real,
    serialnumber nvarchar(255),
    create_time  datetime2,
    update_time  datetime2 not null
)
go

INSERT INTO drinkshop.dbo.orders (id, user_id, login_name, user_address, cost, serialnumber, create_time, update_time) VALUES (8, null, null, null, null, null, null, N'2021-03-20 23:32:35.0000000');
INSERT INTO drinkshop.dbo.orders (id, user_id, login_name, user_address, cost, serialnumber, create_time, update_time) VALUES (17, 1, N'1', N'dsaf', 100, null, N'2021-03-21 00:35:59.2667097', N'2021-03-21 00:35:59.2667097');
INSERT INTO drinkshop.dbo.orders (id, user_id, login_name, user_address, cost, serialnumber, create_time, update_time) VALUES (18, 1, N'1', N'dsaf', 100, null, N'2021-03-21 00:36:06.0790652', N'2021-03-21 00:36:06.0790652');
INSERT INTO drinkshop.dbo.orders (id, user_id, login_name, user_address, cost, serialnumber, create_time, update_time) VALUES (19, 10, N'cgn', N'软件园', 310, N'BEE87D8B6A3AA6383F6230C4E6380F2F', N'2021-03-21 00:36:34.5506977', N'2021-03-21 00:36:34.5506977');
INSERT INTO drinkshop.dbo.orders (id, user_id, login_name, user_address, cost, serialnumber, create_time, update_time) VALUES (20, 10, N'cgn', N'软件园', 156, N'F967BD8661529A7149E8881B4AF5D202', N'2021-03-21 01:12:47.0206946', N'2021-03-21 01:12:47.0206946');
INSERT INTO drinkshop.dbo.orders (id, user_id, login_name, user_address, cost, serialnumber, create_time, update_time) VALUES (21, 10, N'cgn', N'qwe', 152, N'E7A72EAA832DC93FEB14D5A64F58DF1A', N'2021-03-21 01:34:31.2802580', N'2021-03-21 01:34:31.2802580');
INSERT INTO drinkshop.dbo.orders (id, user_id, login_name, user_address, cost, serialnumber, create_time, update_time) VALUES (22, 10, N'cgn', N'qwe', 152, N'8C55AAD98EA5A25244CFAA42D9B5C96F', N'2021-03-22 07:19:06.9200863', N'2021-03-22 07:19:06.9200863');
INSERT INTO drinkshop.dbo.orders (id, user_id, login_name, user_address, cost, serialnumber, create_time, update_time) VALUES (23, 10, N'cgn', N'qwe', 90, N'6BC188078611C0D37DAEC1E7D04596B4', N'2021-03-22 09:32:47.7314474', N'2021-03-22 09:32:47.7314474');
INSERT INTO drinkshop.dbo.orders (id, user_id, login_name, user_address, cost, serialnumber, create_time, update_time) VALUES (24, 10, N'cgn', N'Haltenhoffstraße 1, 30539 Hannover', 22.09, N'0862FA77D342FA7A2352D882C8154599', N'2021-03-23 00:22:04.3486495', N'2021-03-23 00:22:04.3486495');
INSERT INTO drinkshop.dbo.orders (id, user_id, login_name, user_address, cost, serialnumber, create_time, update_time) VALUES (25, 10, N'cgn', N'Haltenhoffstraße 1, 30539 Hannover', 20.09, N'AFEA10B6D602736A515445572CB98B31', N'2021-03-23 00:30:03.5771789', N'2021-03-23 00:30:03.5771789');
INSERT INTO drinkshop.dbo.orders (id, user_id, login_name, user_address, cost, serialnumber, create_time, update_time) VALUES (26, 10, N'cgn', N'Haltenhoffstraße 1, 30539 Hannover', 20.09, N'42DB4DF2FBF3217DFBA82A42F608FCBC', N'2021-03-23 00:31:54.3705730', N'2021-03-23 00:31:54.3705730');