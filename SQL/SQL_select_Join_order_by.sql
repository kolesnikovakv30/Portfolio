CREATE TABLE users (
   id serial not null,
   user_name varchar(50) not null,
  level_id INT,
  skill INT,
   PRIMARY KEY (id)
   );
   INSERT INTO users (id, user_name,level_id,skill)  
VALUES (default, 'Anton',1,900000),(default, 'Denis',3,4000),(default, 'Petr',2,50000),
(default, 'Andrey',4,20),(default, 'Olga',1,600000),(default, 'Anna',1,1600000);
select * from users;


CREATE TABLE levels (
   id serial not null,
   level_name varchar(50) not null,
   PRIMARY KEY (id)
   );
   INSERT INTO levels (id, level_name)  
VALUES (default, 'admin'),(default, 'power_user'),(default, 'user'),(default, 'guest');
select * from levels;

1. Отобрать из таблицы user всех пользователей, у которых level_id=1, skill > 799000 и в имени встречается буква а								
select * from users where level_id='1' and skill>'799000',name '%a%';

2. Удалить всех пользователей, у которых skill меньше 100000								
delete FROM users where skill < '100000';

3. Вывести все данные из таблицы user в порядке убывания по полю skill 								
select * from user order by DESK;

4. Добавить в таблицу user нового пользователя по имени Oleg, с уровнем 4 и skill =10
insert into users  VALUES (default,'Oleg',1,10);	

5. Обновить данные в таблице user -  для пользователей с level_id меньше 2 проставить skill 2000000								
update  users set skill=2000000 where level_id<2;

6. Выбрать user_name всех пользователей уровня admin используя подзапрос								
select users.users_name from users where users.level_id=(select levels.id from levels 
where levels.level_name='admin');
							
7. Выбрать user_name всех пользователей уровня admin используя join								
select users.user_name,levels.levels.level_name from users join levels on levels.id=users.level_id
where levels.level_name='admin';