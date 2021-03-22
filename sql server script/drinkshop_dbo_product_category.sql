create table product_category
(
    id        int identity
        primary key,
    name      nvarchar(20) not null,
    parent_id int          not null,
    type      int
)
go

INSERT INTO drinkshop.dbo.product_category (id, name, parent_id, type) VALUES (548, N'Bier', 0, 1);
INSERT INTO drinkshop.dbo.product_category (id, name, parent_id, type) VALUES (628, N'Wasser', 0, 1);
INSERT INTO drinkshop.dbo.product_category (id, name, parent_id, type) VALUES (654, N'Alkoholich', 548, 2);
INSERT INTO drinkshop.dbo.product_category (id, name, parent_id, type) VALUES (655, N'20x0,50L', 654, 3);
INSERT INTO drinkshop.dbo.product_category (id, name, parent_id, type) VALUES (656, N'Classic/Spritzig', 628, 2);
INSERT INTO drinkshop.dbo.product_category (id, name, parent_id, type) VALUES (657, N'Medium/Sanft', 628, 2);
INSERT INTO drinkshop.dbo.product_category (id, name, parent_id, type) VALUES (658, N'Ohne Zucker', 660, 2);
INSERT INTO drinkshop.dbo.product_category (id, name, parent_id, type) VALUES (659, N'24x0,33L', 654, 3);
INSERT INTO drinkshop.dbo.product_category (id, name, parent_id, type) VALUES (660, N'Saft', 0, 1);
INSERT INTO drinkshop.dbo.product_category (id, name, parent_id, type) VALUES (661, N'Normal', 660, 2);
INSERT INTO drinkshop.dbo.product_category (id, name, parent_id, type) VALUES (662, N'11x0,50L', 654, 3);
INSERT INTO drinkshop.dbo.product_category (id, name, parent_id, type) VALUES (663, N'20x0,50L', 669, 3);
INSERT INTO drinkshop.dbo.product_category (id, name, parent_id, type) VALUES (669, N'Alkoholfrei', 548, 2);
INSERT INTO drinkshop.dbo.product_category (id, name, parent_id, type) VALUES (670, N'Schorlen', 0, 1);
INSERT INTO drinkshop.dbo.product_category (id, name, parent_id, type) VALUES (671, N'Normal', 670, 2);
INSERT INTO drinkshop.dbo.product_category (id, name, parent_id, type) VALUES (672, N'24x0,33L', 669, 3);
INSERT INTO drinkshop.dbo.product_category (id, name, parent_id, type) VALUES (673, N'11x0,50L', 669, 3);
INSERT INTO drinkshop.dbo.product_category (id, name, parent_id, type) VALUES (674, N'Wenig Zucker', 670, 2);
INSERT INTO drinkshop.dbo.product_category (id, name, parent_id, type) VALUES (675, N'Wenig Zucker', 660, 2);
INSERT INTO drinkshop.dbo.product_category (id, name, parent_id, type) VALUES (676, N'Tee', 0, 1);
INSERT INTO drinkshop.dbo.product_category (id, name, parent_id, type) VALUES (677, N'Schwarzer Tee', 676, 2);
INSERT INTO drinkshop.dbo.product_category (id, name, parent_id, type) VALUES (678, N'Grüner Tee', 676, 2);
INSERT INTO drinkshop.dbo.product_category (id, name, parent_id, type) VALUES (679, N'Früchtetee', 676, 2);
INSERT INTO drinkshop.dbo.product_category (id, name, parent_id, type) VALUES (680, N'脑白金', 677, 3);
INSERT INTO drinkshop.dbo.product_category (id, name, parent_id, type) VALUES (681, N'Kaffee', 0, 1);
INSERT INTO drinkshop.dbo.product_category (id, name, parent_id, type) VALUES (682, N'Kaffeebohne', 681, 2);
INSERT INTO drinkshop.dbo.product_category (id, name, parent_id, type) VALUES (683, N'Löslicher Kaffee', 681, 2);
INSERT INTO drinkshop.dbo.product_category (id, name, parent_id, type) VALUES (684, N'大型', 683, 3);
INSERT INTO drinkshop.dbo.product_category (id, name, parent_id, type) VALUES (685, N'小型', 683, 3);
INSERT INTO drinkshop.dbo.product_category (id, name, parent_id, type) VALUES (686, N'中型', 683, 3);
INSERT INTO drinkshop.dbo.product_category (id, name, parent_id, type) VALUES (687, N'大型', 682, 3);
INSERT INTO drinkshop.dbo.product_category (id, name, parent_id, type) VALUES (688, N'中型', 682, 3);
INSERT INTO drinkshop.dbo.product_category (id, name, parent_id, type) VALUES (689, N'小型', 682, 3);
INSERT INTO drinkshop.dbo.product_category (id, name, parent_id, type) VALUES (690, N'Ohne Zucker', 670, 2);
INSERT INTO drinkshop.dbo.product_category (id, name, parent_id, type) VALUES (691, N'联想电脑', 690, 3);
INSERT INTO drinkshop.dbo.product_category (id, name, parent_id, type) VALUES (692, N'刀叉', 656, 3);
INSERT INTO drinkshop.dbo.product_category (id, name, parent_id, type) VALUES (693, N'碗筷', 656, 3);
INSERT INTO drinkshop.dbo.product_category (id, name, parent_id, type) VALUES (696, N'Still/naturell', 628, 2);