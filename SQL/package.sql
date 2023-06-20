create database baginska_fotografia;
use baginska_fotografia;
create table package (
	id serial, 
    name varchar (100),
    description varchar(3000),
    price_studio decimal,
    price_open decimal,
    price_extra_shots decimal,
    price_printed_picture decimal);
    
alter table package add column (
	deleted boolean,
    created_at datetime,
    updated_at datetime,
    row_version numeric
);

alter table package  alter row_version set default 1;
alter table package  alter deleted set default false;
    
truncate table mleko;

drop table mleko;

alter table package 
	drop column created_at, 
	drop column updated_at;
    
alter table package add column (
	created_at datetime default now(),
    updated_at datetime default now()
	);
    
 insert into package (
	name, description, price_studio, price_open, price_extra_shots, price_printed_picture
	) values ("Pakiet mini", "bla bla bla", 350.00, 250.00, 35.00, 30.00);
    
select *
from package;

update package 
	set deleted = false
	where id =1;
    