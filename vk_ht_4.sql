-- Написать скрипт, возвращающий список имен (только firstname) пользователей без повторений в алфавитном порядке
select distinct firstname 
	from users 
	order by firstname;

--  Написать скрипт, отмечающий несовершеннолетних пользователей как неактивных (поле is_active = false). 
-- Предварительно добавить такое поле в таблицу profiles со значением по умолчанию = true (или 1)
alter table profiles 
	add column is_active boolean default true;
update profiles 
	set is_active = 0
	where birthday > '2002-03-29';

-- Написать скрипт, удаляющий сообщения «из будущего» (дата позже сегодняшней)
delete from messages 
	where created_at >  now();

-- Альтернативный вариант, используя не DELETE, а с созданием столбца is_deleted
alter table messages 
	add column is_deleted boolean default false;
update messages 
	set is_deleted = 1
	where created_at >  now();







