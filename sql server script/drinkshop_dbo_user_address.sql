create table user_address
(
    id          int identity
        primary key,
    user_id     int,
    address     nvarchar(255),
    remark      nvarchar(255),
    isdefault   int,
    create_time datetime2,
    update_time datetime2 not null
)
go

INSERT INTO drinkshop.dbo.user_address (id, user_id, address, remark, isdefault, create_time, update_time) VALUES (11, 10, N'Schaarreihe 21, 26389 Wilhelmshaven', N'Marias Haus', 0, N'2019-06-03 02:32:39.0000000', N'2019-06-03 02:32:39.0000000');
INSERT INTO drinkshop.dbo.user_address (id, user_id, address, remark, isdefault, create_time, update_time) VALUES (34, 10, N'Altengrodenerweg 86A, 26389 Wilhelmshaven', N'Mein Haus', 0, N'2019-05-30 20:21:32.0000000', N'2019-05-30 20:21:32.0000000');
INSERT INTO drinkshop.dbo.user_address (id, user_id, address, remark, isdefault, create_time, update_time) VALUES (35, 10, N'Jade Hochschule, 26389 Wilhelmshaven', N'Hochschule', 0, N'2019-06-02 20:06:41.0000000', N'2021-03-21 01:34:31.2642518');
INSERT INTO drinkshop.dbo.user_address (id, user_id, address, remark, isdefault, create_time, update_time) VALUES (45, 10, N'Haltenhoffstraße 1, 30539 Hannover', N'Sabines Haus', 1, N'2019-07-03 20:50:29.0000000', N'2019-07-03 20:50:29.0000000');