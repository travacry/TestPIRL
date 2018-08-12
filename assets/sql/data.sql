-- таблица с пользователями users, содержащая имя и дату регистрации пользователя:
CREATE TABLE users (
    id serial PRIMARY KEY,
    name varchar(320) NOT NULL,
    reg_date timestamp DEFAULT now() NOT NULL
);

-- таблица товаров:
CREATE TABLE products (
    id serial PRIMARY KEY,
    name varchar NOT NULL
);

-- таблица покупок с идентификатором пользователя и идентификатором купленного товара
CREATE TABLE purchases (
    id serial PRIMARY KEY,
    user_id int NOT NULL REFERENCES users(id),
    product_id int NOT NULL REFERENCES products(id)
);

/*
16	Ромбус				2018-08-10 18:46:14
17	Генерал Джон Мэксон	2018-08-10 08:30:14
23	Сет					2018-08-10 10:46:14
22	Локсли				2018-08-10 12:46:14
18	Кэббот				2018-08-10 16:00:14
24	Николь				2018-08-10 18:20:14
21	Гарольд				2018-08-10 21:46:14
15	Ври					2018-08-10 11:30:14
19	Бутч Харрис			2018-08-10 04:46:14
20	Декер				2018-08-10 14:46:14
25	Лаура				2018-08-10 11:46:14
*/

-- пользователи
INSERT INTO users(name, reg_date) VALUES ('Ври', '2018-08-10 11:30:14');
INSERT INTO users(name, reg_date) VALUES ('Ромбус', '2018-08-10 18:46:14');
INSERT INTO users(name, reg_date) VALUES ('Генерал Джон Мэксон', '2018-08-10 08:30:14');
INSERT INTO users(name, reg_date) VALUES ('Кэббот', '2018-08-10 16:00:14');
INSERT INTO users(name, reg_date) VALUES ('Бутч Харрис', '2018-08-10 04:46:14');
INSERT INTO users(name, reg_date) VALUES ('Декер', '2018-08-10 14:46:14');
INSERT INTO users(name, reg_date) VALUES ('Гарольд', '2018-08-10 21:46:14');
INSERT INTO users(name, reg_date) VALUES ('Локсли', '2018-08-10 12:46:14');
INSERT INTO users(name, reg_date) VALUES ('Сет', '2018-08-10 10:46:14');
INSERT INTO users(name, reg_date) VALUES ('Николь', '2018-08-10 18:20:14');
INSERT INTO users(name, reg_date) VALUES ('Лаура', '2018-08-10 11:46:14');
-- товары
INSERT INTO products(name) VALUES ('патроны 9мм');
INSERT INTO products(name) VALUES ('патроны 7.62');
INSERT INTO products(name) VALUES ('патроны 5.45');
INSERT INTO products(name) VALUES ('патроны 5.45');
INSERT INTO products(name) VALUES ('патроны 12 калибр');
INSERT INTO products(name) VALUES ('Антирадин');
INSERT INTO products(name) VALUES ('Баффаут');
INSERT INTO products(name) VALUES ('Винт');
INSERT INTO products(name) VALUES ('Ментаты');
INSERT INTO products(name) VALUES ('Печенье');
INSERT INTO products(name) VALUES ('Пиво');
INSERT INTO products(name) VALUES ('Пиво «Гамма-глоток»');
INSERT INTO products(name) VALUES ('Пойло');
INSERT INTO products(name) VALUES ('Психо');
INSERT INTO products(name) VALUES ('Рад-X');
INSERT INTO products(name) VALUES ('Рентген-ром');
INSERT INTO products(name) VALUES ('Самогон');
INSERT INTO products(name) VALUES ('Суперстимулятор');
INSERT INTO products(name) VALUES ('Сырные орешки');
INSERT INTO products(name) VALUES ('Фрукт');
INSERT INTO products(name) VALUES ('Целебный порошок');
INSERT INTO products(name) VALUES ('Шашлык из игуаны');
INSERT INTO products(name) VALUES ('Шприц');
INSERT INTO products(name) VALUES ('Яд');
INSERT INTO products(name) VALUES ('Ядер-Кола');
INSERT INTO products(name) VALUES ('Pip-Boy');
INSERT INTO products(name) VALUES ('Человеческий мозг');

-- покупки


-- Сет (Set) — лидер гулей в Некрополе
INSERT INTO purchases (user_id, product_id)
(
	SELECT (SELECT "id" FROM users WHERE name = 'Сет') as "user_id",
			(SELECT "id" FROM products WHERE name = 'Человеческий мозг') as "product_id"
);

INSERT INTO purchases (user_id, product_id)
(
	SELECT (SELECT "id" FROM users WHERE name = 'Сет') as "user_id",
			(SELECT "id" FROM products WHERE name = 'Пиво') as "product_id"
);

INSERT INTO purchases (user_id, product_id)
(
	SELECT (SELECT "id" FROM users WHERE name = 'Сет') as "user_id",
			(SELECT "id" FROM products WHERE name = 'Печенье') as "product_id"
);

-- Локсли (Loxley) — лидер Гильдии воров. Живущий по принципам Робин Гуда.
INSERT INTO purchases (user_id, product_id)
(
	SELECT (SELECT "id" FROM users WHERE name = 'Локсли') as "user_id",
			(SELECT "id" FROM products WHERE name = 'Пиво') as "product_id"
);

INSERT INTO purchases (user_id, product_id)
(
	SELECT (SELECT "id" FROM users WHERE name = 'Локсли') as "user_id",
			(SELECT "id" FROM products WHERE name = 'Пиво') as "product_id"
);

INSERT INTO purchases (user_id, product_id)
(
	SELECT (SELECT "id" FROM users WHERE name = 'Локсли') as "user_id",
			(SELECT "id" FROM products WHERE name = 'Пиво') as "product_id"
);

INSERT INTO purchases (user_id, product_id)
(
	SELECT (SELECT "id" FROM users WHERE name = 'Локсли') as "user_id",
			(SELECT "id" FROM products WHERE name = 'Пиво') as "product_id"
);

INSERT INTO purchases (user_id, product_id)
(
	SELECT (SELECT "id" FROM users WHERE name = 'Локсли') as "user_id",
			(SELECT "id" FROM products WHERE name = 'Самогон') as "product_id"
);

INSERT INTO purchases (user_id, product_id)
(
	SELECT (SELECT "id" FROM users WHERE name = 'Локсли') as "user_id",
			(SELECT "id" FROM products WHERE name = 'Печенье') as "product_id"
);

INSERT INTO purchases (user_id, product_id)
(
	SELECT (SELECT "id" FROM users WHERE name = 'Локсли') as "user_id",
			(SELECT "id" FROM products WHERE name = 'Самогон') as "product_id"
);

INSERT INTO purchases (user_id, product_id)
(
	SELECT (SELECT "id" FROM users WHERE name = 'Локсли') as "user_id",
			(SELECT "id" FROM products WHERE name = 'Самогон') as "product_id"
);
-- Генерал Джон Мэксон[1] (англ. General John Maxson) — внук Роджера Мэксона и глава Братства Стали в 2161 году.
INSERT INTO purchases (user_id, product_id)
(
	SELECT (SELECT "id" FROM users WHERE name = 'Генерал Джон Мэксон') as "user_id",
			(SELECT "id" FROM products WHERE name = 'Печенье') as "product_id"
);

INSERT INTO purchases (user_id, product_id)
(
	SELECT (SELECT "id" FROM users WHERE name = 'Генерал Джон Мэксон') as "user_id",
			(SELECT "id" FROM products WHERE name = 'Печенье') as "product_id"
);

INSERT INTO purchases (user_id, product_id)
(
	SELECT (SELECT "id" FROM users WHERE name = 'Генерал Джон Мэксон') as "user_id",
			(SELECT "id" FROM products WHERE name = 'Печенье') as "product_id"
);

INSERT INTO purchases (user_id, product_id)
(
	SELECT (SELECT "id" FROM users WHERE name = 'Генерал Джон Мэксон') as "user_id",
			(SELECT "id" FROM products WHERE name = 'Сырные орешки') as "product_id"
);

INSERT INTO purchases (user_id, product_id)
(
	SELECT (SELECT "id" FROM users WHERE name = 'Генерал Джон Мэксон') as "user_id",
			(SELECT "id" FROM products WHERE name = 'Ядер-Кола') as "product_id"
);

INSERT INTO purchases (user_id, product_id)
(
	SELECT (SELECT "id" FROM users WHERE name = 'Генерал Джон Мэксон') as "user_id",
			(SELECT "id" FROM products WHERE name = 'Сырные орешки') as "product_id"
);

INSERT INTO purchases (user_id, product_id)
(
	SELECT (SELECT "id" FROM users WHERE name = 'Генерал Джон Мэксон') as "user_id",
			(SELECT "id" FROM products WHERE name = 'Ядер-Кола') as "product_id"
);
-- Кэббот (Cabbot) — послушник Братства Стали, встречающий путников у входа в бункер Лост-Хиллз.
INSERT INTO purchases (user_id, product_id)
(
	SELECT (SELECT "id" FROM users WHERE name = 'Кэббот') as "user_id",
			(SELECT "id" FROM products WHERE name = 'Сырные орешки') as "product_id"
);

INSERT INTO purchases (user_id, product_id)
(
	SELECT (SELECT "id" FROM users WHERE name = 'Кэббот') as "user_id",
			(SELECT "id" FROM products WHERE name = 'Самогон') as "product_id"
);

INSERT INTO purchases (user_id, product_id)
(
	SELECT (SELECT "id" FROM users WHERE name = 'Кэббот') as "user_id",
			(SELECT "id" FROM products WHERE name = 'Самогон') as "product_id"
);

INSERT INTO purchases (user_id, product_id)
(
	SELECT (SELECT "id" FROM users WHERE name = 'Кэббот') as "user_id",
			(SELECT "id" FROM products WHERE name = 'Самогон') as "product_id"
);

INSERT INTO purchases (user_id, product_id)
(
	SELECT (SELECT "id" FROM users WHERE name = 'Кэббот') as "user_id",
			(SELECT "id" FROM products WHERE name = 'Сырные орешки') as "product_id"
);

INSERT INTO purchases (user_id, product_id)
(
	SELECT (SELECT "id" FROM users WHERE name = 'Кэббот') as "user_id",
			(SELECT "id" FROM products WHERE name = 'Сырные орешки') as "product_id"
);

INSERT INTO purchases (user_id, product_id)
(
	SELECT (SELECT "id" FROM users WHERE name = 'Кэббот') as "user_id",
			(SELECT "id" FROM products WHERE name = 'Самогон') as "product_id"
);
-- Николь (Nicole) — руководитель Последователей апокалипсиса — группы, расположившейся в библиотеке Лос-Анджелеса.
INSERT INTO purchases (user_id, product_id)
(
	SELECT (SELECT "id" FROM users WHERE name = 'Николь') as "user_id",
			(SELECT "id" FROM products WHERE name = 'Психо') as "product_id"
);

INSERT INTO purchases (user_id, product_id)
(
	SELECT (SELECT "id" FROM users WHERE name = 'Николь') as "user_id",
			(SELECT "id" FROM products WHERE name = 'Рад-X') as "product_id"
);

INSERT INTO purchases (user_id, product_id)
(
	SELECT (SELECT "id" FROM users WHERE name = 'Николь') as "user_id",
			(SELECT "id" FROM products WHERE name = 'Психо') as "product_id"
);

INSERT INTO purchases (user_id, product_id)
(
	SELECT (SELECT "id" FROM users WHERE name = 'Николь') as "user_id",
			(SELECT "id" FROM products WHERE name = 'Пиво «Гамма-глоток»') as "product_id"
);

INSERT INTO purchases (user_id, product_id)
(
	SELECT (SELECT "id" FROM users WHERE name = 'Николь') as "user_id",
			(SELECT "id" FROM products WHERE name = 'Яд') as "product_id"
);

INSERT INTO purchases (user_id, product_id)
(
	SELECT (SELECT "id" FROM users WHERE name = 'Николь') as "user_id",
			(SELECT "id" FROM products WHERE name = 'Рад-X') as "product_id"
);

INSERT INTO purchases (user_id, product_id)
(
	SELECT (SELECT "id" FROM users WHERE name = 'Николь') as "user_id",
			(SELECT "id" FROM products WHERE name = 'Рад-X') as "product_id"
);

INSERT INTO purchases (user_id, product_id)
(
	SELECT (SELECT "id" FROM users WHERE name = 'Николь') as "user_id",
			(SELECT "id" FROM products WHERE name = 'Яд') as "product_id"
);
-- Гарольд (Harold) — мутант, живущий в Хабе.
INSERT INTO purchases (user_id, product_id)
(
	SELECT (SELECT "id" FROM users WHERE name = 'Гарольд') as "user_id",
			(SELECT "id" FROM products WHERE name = 'Рад-X') as "product_id"
);

INSERT INTO purchases (user_id, product_id)
(
	SELECT (SELECT "id" FROM users WHERE name = 'Гарольд') as "user_id",
			(SELECT "id" FROM products WHERE name = 'Психо') as "product_id"
);

INSERT INTO purchases (user_id, product_id)
(
	SELECT (SELECT "id" FROM users WHERE name = 'Гарольд') as "user_id",
			(SELECT "id" FROM products WHERE name = 'Психо') as "product_id"
);

INSERT INTO purchases (user_id, product_id)
(
	SELECT (SELECT "id" FROM users WHERE name = 'Гарольд') as "user_id",
			(SELECT "id" FROM products WHERE name = 'Психо') as "product_id"
);

INSERT INTO purchases (user_id, product_id)
(
	SELECT (SELECT "id" FROM users WHERE name = 'Гарольд') as "user_id",
			(SELECT "id" FROM products WHERE name = 'Рад-X') as "product_id"
);

INSERT INTO purchases (user_id, product_id)
(
	SELECT (SELECT "id" FROM users WHERE name = 'Гарольд') as "user_id",
			(SELECT "id" FROM products WHERE name = 'Человеческий мозг') as "product_id"
);

INSERT INTO purchases (user_id, product_id)
(
	SELECT (SELECT "id" FROM users WHERE name = 'Гарольд') as "user_id",
			(SELECT "id" FROM products WHERE name = 'Человеческий мозг') as "product_id"
);

