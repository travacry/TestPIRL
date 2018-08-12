-- Нужно составить запрос для PostgreSQL, который получит количество
-- зарегистрированных пользователей в разные часы суток и сколько из
-- этих пользователей являются покупателями (совершили хотя бы одну покупку).
-- Тест 1.
select "hour", count("id") as "regs", count("product_id") as "buyers"
	from (
		select u."id", to_char(u."reg_date", 'HH24') "hour", p."product_id"
		from users u
		left join purchases p on u."id" = p."user_id"
	) "user_id_hour"
group by "hour"
order by "hour";