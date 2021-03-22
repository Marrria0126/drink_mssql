create table product
(
    id                    int identity
        primary key,
    name                  nvarchar(200) not null,
    description           nvarchar(1024),
    price                 real          not null,
    stock                 int           not null,
    categorylevelone_id   int,
    categoryleveltwo_id   int,
    categorylevelthree_id int,
    file_name             nvarchar(200)
)
go

INSERT INTO drinkshop.dbo.product (id, name, description, price, stock, categorylevelone_id, categoryleveltwo_id, categorylevelthree_id, file_name) VALUES (733, N'Andechs Bergbock Hell 20x0,50L', N'Pfand erhaltet: 3.10€', 22.09, 97, 548, 654, 655, N'Bier_01.png');
INSERT INTO drinkshop.dbo.product (id, name, description, price, stock, categorylevelone_id, categoryleveltwo_id, categorylevelthree_id, file_name) VALUES (734, N'Andechs Doppelbock Dunkel 20x0,50L', N'Pfand erhaltet: 3.10€', 22.09, 85, 548, 654, 655, N'Bier_02.png');
INSERT INTO drinkshop.dbo.product (id, name, description, price, stock, categorylevelone_id, categoryleveltwo_id, categorylevelthree_id, file_name) VALUES (735, N'Giesinger Erhellung 20x0,50L', N'Pfand erhaltet: 3.10€', 24.09, 996, 548, 654, 655, N'Bier_11.png');
INSERT INTO drinkshop.dbo.product (id, name, description, price, stock, categorylevelone_id, categoryleveltwo_id, categorylevelthree_id, file_name) VALUES (736, N'Gutmann Hefeweizen 20x0,50L', N'Pfand erhaltet: 3.10€', 20.09, 998, 548, 654, 655, N'Bier_12.png');
INSERT INTO drinkshop.dbo.product (id, name, description, price, stock, categorylevelone_id, categoryleveltwo_id, categorylevelthree_id, file_name) VALUES (737, N'Kloster Scheyern Gold Hell 20x0,50L', N'Pfand erhaltet: 3.10€', 20.09, 110, 548, 654, 655, N'Bier_15.png');
INSERT INTO drinkshop.dbo.product (id, name, description, price, stock, categorylevelone_id, categoryleveltwo_id, categorylevelthree_id, file_name) VALUES (738, N'Jever Fun Glas 20x0,50L', N'Pfand erhaltet: 3.10€', 20.09, 106, 548, 654, 655, N'Bier_24.png');
INSERT INTO drinkshop.dbo.product (id, name, description, price, stock, categorylevelone_id, categoryleveltwo_id, categorylevelthree_id, file_name) VALUES (739, N'Augustiner Edelstoff 24x0,33L', N'Pfand erhaltet: 3.42€', 21.91, 98, 548, 654, 659, N'Bier_03.png');
INSERT INTO drinkshop.dbo.product (id, name, description, price, stock, categorylevelone_id, categoryleveltwo_id, categorylevelthree_id, file_name) VALUES (740, N'Beck''s Gold Sixpack 24x0,33L', N'Pfand erhaltet: 3.42€', 23.91, 98, 548, 654, 659, N'Bier_05.png');
INSERT INTO drinkshop.dbo.product (id, name, description, price, stock, categorylevelone_id, categoryleveltwo_id, categorylevelthree_id, file_name) VALUES (741, N'Beck''s Ice Sixpack 24x0,33L', N'Pfand erhaltet: 3.42€', 23.91, 100, 548, 654, 659, N'Bier_06.png');
INSERT INTO drinkshop.dbo.product (id, name, description, price, stock, categorylevelone_id, categoryleveltwo_id, categorylevelthree_id, file_name) VALUES (742, N'Radeberger Pilsener 24x0,33L', N'Pfand erhaltet: 3.42€', 22.41, 1000, 548, 654, 659, N'Bier_16.png');
INSERT INTO drinkshop.dbo.product (id, name, description, price, stock, categorylevelone_id, categoryleveltwo_id, categorylevelthree_id, file_name) VALUES (743, N'Beck’s Gold Glas 24x0,33L', N'Pfand erhaltet: 3.42€', 20.41, 1000, 548, 654, 659, N'Bier_19.png');
INSERT INTO drinkshop.dbo.product (id, name, description, price, stock, categorylevelone_id, categoryleveltwo_id, categorylevelthree_id, file_name) VALUES (744, N'Beck’s Pils Glas 24x0,33L', N'Pfand erhaltet: 3.42€', 20.41, 1000, 548, 654, 659, N'Bier_20.png');
INSERT INTO drinkshop.dbo.product (id, name, description, price, stock, categorylevelone_id, categoryleveltwo_id, categorylevelthree_id, file_name) VALUES (745, N'Carlsburg Pils Glas 24x0,33L', N'Pfand erhaltet: 3.42€', 23.91, 100, 548, 654, 659, N'Bier_22.png');
INSERT INTO drinkshop.dbo.product (id, name, description, price, stock, categorylevelone_id, categoryleveltwo_id, categorylevelthree_id, file_name) VALUES (746, N'Desperados Tequila Glas 24x0,33L', N'Pfand erhaltet: 3.42€', 36.41, 100, 548, 654, 659, N'Bier_23.png');
INSERT INTO drinkshop.dbo.product (id, name, description, price, stock, categorylevelone_id, categoryleveltwo_id, categorylevelthree_id, file_name) VALUES (747, N'Erdinger Weissbier 11er 11x0,50L', N'Pfand erhaltet: 2.38€', 13.37, 1000, 548, 654, 662, N'Bier_08.png');
INSERT INTO drinkshop.dbo.product (id, name, description, price, stock, categorylevelone_id, categoryleveltwo_id, categorylevelthree_id, file_name) VALUES (748, N'Franziskaner Weissbier Royal 11er 11x0,50L', N'Pfand erhaltet: 2.38€', 15.37, 16, 548, 654, 662, N'Bier_10.png');
INSERT INTO drinkshop.dbo.product (id, name, description, price, stock, categorylevelone_id, categoryleveltwo_id, categorylevelthree_id, file_name) VALUES (749, N'Hopf Weisse Alkoholfrei 20x0,50L', N'Pfand erhaltet: 3.10€', 21.09, 100, 548, 669, 663, N'Bier_13.png');
INSERT INTO drinkshop.dbo.product (id, name, description, price, stock, categorylevelone_id, categoryleveltwo_id, categorylevelthree_id, file_name) VALUES (750, N'Paulaner Weissbier Alkoholfrei 20x0,50L', N'Pfand erhaltet: 3.10€', 20.09, 1000, 548, 669, 663, N'Bier_18.png');
INSERT INTO drinkshop.dbo.product (id, name, description, price, stock, categorylevelone_id, categoryleveltwo_id, categorylevelthree_id, file_name) VALUES (751, N'Beck''s Blue Alkoholfrei Sixpack 24x0,33L', N'Pfand erhaltet: 3.42€', 23.91, 1000, 548, 669, 672, N'Bier_04.png');
INSERT INTO drinkshop.dbo.product (id, name, description, price, stock, categorylevelone_id, categoryleveltwo_id, categorylevelthree_id, file_name) VALUES (752, N'Erdinger Weissbier Alkoholfrei Grapefruit 24x0,33L', N'Pfand erhaltet: 3.42€', 20.71, 1000, 548, 669, 672, N'Bier_09.png');
INSERT INTO drinkshop.dbo.product (id, name, description, price, stock, categorylevelone_id, categoryleveltwo_id, categorylevelthree_id, file_name) VALUES (753, N'Beck’s Blue-Alk-Frei Glas 24x0,33L', N'Pfand erhaltet: 3.42€', 20.41, 100, 548, 669, 672, N'Bier_21.png');
INSERT INTO drinkshop.dbo.product (id, name, description, price, stock, categorylevelone_id, categoryleveltwo_id, categorylevelthree_id, file_name) VALUES (754, N'Clausthaler Radler Alkoholfrei 11er 11x0,50L', N'Pfand erhaltet: 2.38€', 12.27, 100, 548, 669, 673, N'Bier_07.png');
INSERT INTO drinkshop.dbo.product (id, name, description, price, stock, categorylevelone_id, categoryleveltwo_id, categorylevelthree_id, file_name) VALUES (755, N'软沙发', N'', 8596, 99, 628, 696, 0, N'food_b1.jpg');
INSERT INTO drinkshop.dbo.product (id, name, description, price, stock, categorylevelone_id, categoryleveltwo_id, categorylevelthree_id, file_name) VALUES (756, N'收纳盒', N'', 5966, 100, 628, 696, 0, N'food_b2.jpg');
INSERT INTO drinkshop.dbo.product (id, name, description, price, stock, categorylevelone_id, categoryleveltwo_id, categorylevelthree_id, file_name) VALUES (757, N'洗衣液', N'', 58, 1000, 628, 696, 0, N'food_r.jpg');
INSERT INTO drinkshop.dbo.product (id, name, description, price, stock, categorylevelone_id, categoryleveltwo_id, categorylevelthree_id, file_name) VALUES (758, N'红短沙发', N'', 596, 123, 628, 696, 0, N'fre_1.jpg');
INSERT INTO drinkshop.dbo.product (id, name, description, price, stock, categorylevelone_id, categoryleveltwo_id, categorylevelthree_id, file_name) VALUES (759, N'新西兰奶粉', N'', 5896, 100, 676, 679, 0, N'fre_2.jpg');
INSERT INTO drinkshop.dbo.product (id, name, description, price, stock, categorylevelone_id, categoryleveltwo_id, categorylevelthree_id, file_name) VALUES (760, N'婴儿车', N'', 11000, 100, 681, 682, 687, N'fre_3.jpg');
INSERT INTO drinkshop.dbo.product (id, name, description, price, stock, categorylevelone_id, categoryleveltwo_id, categorylevelthree_id, file_name) VALUES (761, N'夏款婴儿车', N'', 963, 100, 681, 682, 688, N'fre_4.jpg');
INSERT INTO drinkshop.dbo.product (id, name, description, price, stock, categorylevelone_id, categoryleveltwo_id, categorylevelthree_id, file_name) VALUES (762, N'抗压旅行箱', N'', 569, 1000, 681, 683, 685, N'fre_5.jpg');
INSERT INTO drinkshop.dbo.product (id, name, description, price, stock, categorylevelone_id, categoryleveltwo_id, categorylevelthree_id, file_name) VALUES (763, N'透明手提箱', N'', 8596, 1000, 681, 683, 684, N'fre_6.jpg');
INSERT INTO drinkshop.dbo.product (id, name, description, price, stock, categorylevelone_id, categoryleveltwo_id, categorylevelthree_id, file_name) VALUES (764, N'婴儿果粉', N'', 5896, 1000, 660, 661, 662, N'milk_1.jpg');
INSERT INTO drinkshop.dbo.product (id, name, description, price, stock, categorylevelone_id, categoryleveltwo_id, categorylevelthree_id, file_name) VALUES (765, N'椰子粉', N'', 5963, 1000, 660, 661, 662, N'milk_2.jpg');
INSERT INTO drinkshop.dbo.product (id, name, description, price, stock, categorylevelone_id, categoryleveltwo_id, categorylevelthree_id, file_name) VALUES (766, N'坚果蛋糕', N'', 200, 1, 660, 661, 663, N'milk_3.jpg');
INSERT INTO drinkshop.dbo.product (id, name, description, price, stock, categorylevelone_id, categoryleveltwo_id, categorylevelthree_id, file_name) VALUES (767, N'编制手提箱', N'', 5896, 1000, 681, 682, 688, N'milk_4.jpg');
INSERT INTO drinkshop.dbo.product (id, name, description, price, stock, categorylevelone_id, categoryleveltwo_id, categorylevelthree_id, file_name) VALUES (768, N'纸箱', N'', 5896, 3, 681, 682, 687, N'milk_5.jpg');
INSERT INTO drinkshop.dbo.product (id, name, description, price, stock, categorylevelone_id, categoryleveltwo_id, categorylevelthree_id, file_name) VALUES (769, N'健胃液', N'', 152, 1000, 676, 679, 0, N'milk_6.jpg');
INSERT INTO drinkshop.dbo.product (id, name, description, price, stock, categorylevelone_id, categoryleveltwo_id, categorylevelthree_id, file_name) VALUES (770, N'联想NTC', N'', 8596, 100, 670, 671, 673, N'milk_7.jpg');
INSERT INTO drinkshop.dbo.product (id, name, description, price, stock, categorylevelone_id, categoryleveltwo_id, categorylevelthree_id, file_name) VALUES (771, N'香水1', null, 100, 100, 548, 654, 655, N'milk_8.jpg');
INSERT INTO drinkshop.dbo.product (id, name, description, price, stock, categorylevelone_id, categoryleveltwo_id, categorylevelthree_id, file_name) VALUES (772, N'香水2', null, 100, 100, 548, 654, 655, N'pro1.jpg');
INSERT INTO drinkshop.dbo.product (id, name, description, price, stock, categorylevelone_id, categoryleveltwo_id, categorylevelthree_id, file_name) VALUES (773, N'香水3', null, 100, 100, 548, 654, 655, N'pro2.jpg');
INSERT INTO drinkshop.dbo.product (id, name, description, price, stock, categorylevelone_id, categoryleveltwo_id, categorylevelthree_id, file_name) VALUES (774, N'香水4', null, 100, 100, 548, 654, 655, N'pro3.jpg');
INSERT INTO drinkshop.dbo.product (id, name, description, price, stock, categorylevelone_id, categoryleveltwo_id, categorylevelthree_id, file_name) VALUES (775, N'香水5', null, 100, 100, 548, 654, 655, N'pro4.jpg');
INSERT INTO drinkshop.dbo.product (id, name, description, price, stock, categorylevelone_id, categoryleveltwo_id, categorylevelthree_id, file_name) VALUES (776, N'香水6', null, 1, 1, 548, 654, 655, N'pro5.jpg');