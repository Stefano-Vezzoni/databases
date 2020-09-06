create table users (
			users_id int not null auto_increment,
            name VARCHAR(255) default null,
			salary int(11) default null,
            team_name VARCHAR(255) default null,
            primary key(users_id)
            ) ENGINE = INNODB;