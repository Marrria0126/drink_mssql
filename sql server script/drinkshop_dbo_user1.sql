create table user1
(
    id            int identity
        primary key,
    login_name    nvarchar(255) not null,
    user_name     nvarchar(255) not null,
    password      nvarchar(255) not null,
    gender        int           not null,
    identity_code nvarchar(60),
    email         nvarchar(80),
    mobile        nvarchar(11),
    file_name     nvarchar(255),
    create_time   datetime2     not null,
    update_time   datetime2     not null
)
go

create unique index user1_login_name_uindex
    on user1 (login_name)
go

INSERT INTO drinkshop.dbo.user1 (id, login_name, user_name, password, gender, identity_code, email, mobile, file_name, create_time, update_time) VALUES (2, N'admin', N'系统管理员', N'123123', 0, N'130406198302141869', N'hello11@bdqn.com', N'1583233515', N'7.jpg', N'2020-05-18 06:22:27.0000000', N'2020-05-18 06:22:32.0000000');
INSERT INTO drinkshop.dbo.user1 (id, login_name, user_name, password, gender, identity_code, email, mobile, file_name, create_time, update_time) VALUES (10, N'cgn', N'程广宁', N'123', 1, N'140225189987854589', N'1044732267@qq.com', N'13366055011', N'2.jpg', N'2020-05-18 06:22:34.0000000', N'2020-05-18 06:22:37.0000000');
INSERT INTO drinkshop.dbo.user1 (id, login_name, user_name, password, gender, identity_code, email, mobile, file_name, create_time, update_time) VALUES (14, N'x', N'x', N'123', 1, N'140225189987854589', N'1044732267@qq.com', N'13366055011', null, N'2020-05-18 06:22:34.0000000', N'2020-05-18 06:22:37.0000000');
INSERT INTO drinkshop.dbo.user1 (id, login_name, user_name, password, gender, identity_code, email, mobile, file_name, create_time, update_time) VALUES (16, N'yihong', N'xiayihong', N'qwert', 1, null, null, null, null, N'2021-03-21 00:16:02.9032311', N'2021-03-21 00:16:02.9032311');
INSERT INTO drinkshop.dbo.user1 (id, login_name, user_name, password, gender, identity_code, email, mobile, file_name, create_time, update_time) VALUES (17, N'xyh11', N'啊', N'123123', 1, N'120912091209120912', N'dd@gmail.com', N'13829382039', null, N'2021-03-21 00:23:54.8180756', N'2021-03-21 00:23:54.8180756');
INSERT INTO drinkshop.dbo.user1 (id, login_name, user_name, password, gender, identity_code, email, mobile, file_name, create_time, update_time) VALUES (19, N'yihon', N'xiayihong', N'qwert', 1, null, null, null, null, N'2021-03-21 01:01:07.4384576', N'2021-03-21 01:01:07.4389593');
INSERT INTO drinkshop.dbo.user1 (id, login_name, user_name, password, gender, identity_code, email, mobile, file_name, create_time, update_time) VALUES (20, N'xiaoyangfei', N'杨飞', N'123123', 1, N'120106198903291000', N'yangfei@qq.com', N'13800000000', null, N'2021-03-21 01:11:12.0836028', N'2021-03-21 01:11:12.0836028');
INSERT INTO drinkshop.dbo.user1 (id, login_name, user_name, password, gender, identity_code, email, mobile, file_name, create_time, update_time) VALUES (21, N'Abdsfres1', N'Üüäöß', N'123456', 1, null, N'gsm9888aaaaa@gmail.com', N'13845678901', null, N'2021-03-22 08:10:55.9062166', N'2021-03-22 08:10:55.9062166');
INSERT INTO drinkshop.dbo.user1 (id, login_name, user_name, password, gender, identity_code, email, mobile, file_name, create_time, update_time) VALUES (23, N'qwerasdf', N'Aöäüp', N'123456', 1, null, N'weqfr@qqq.com', N'0123456789', null, N'2021-03-22 08:31:47.8458552', N'2021-03-22 08:31:47.8458552');