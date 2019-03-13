drop schema if exists boundary_test cascade;
create schema boundary_test authorization postgres;

drop table if exists users cascade;

create table users (
	id serial,
	first_name varchar(50) not null,
	second_name varchar(50) not null,
	email_address varchar not null,
	username varchar,
	password varchar(12) not null,
	is_active boolean default true,
	constraint users_pk primary key (id),
	constraint username_un unique(username),
	constraint email_addr_un unique(email_address)
);

INSERT INTO "users" (first_name,second_name,email_address,password) VALUES ('Chase','Warner','nulla.ante@vel.net','password1'),('Dorian','Sandoval','tincidunt@tellusNunclectus.ca','password1'),('Hayes','Strong','sed.tortor.Integer@metus.co.uk','password1'),('Whitney','Jimenez','orci.lacus.vestibulum@Quisqueornaretortor.org','password1'),('Macaulay','Burris','fringilla.mi@Sedet.org','password1'),('Kyra','Marsh','tempor.augue@metusfacilisis.net','password1'),('Clark','Clemons','ac.ipsum.Phasellus@Integer.org','password1'),('Dustin','Solomon','Mauris.ut.quam@tempusrisus.org','password1'),('Carter','Bullock','pede@nisisemsemper.net','password1'),('Lacota','Morrow','dui.Fusce@Praesentinterdum.ca','password1');
INSERT INTO "users" (first_name,second_name,email_address,password) VALUES ('Bethany','Whitley','urna.et@ametdapibusid.net','password1'),('Iris','Clemons','varius.et.euismod@velit.com','password1'),('Melanie','Davis','Donec@ut.net','password1'),('Nevada','Buchanan','ipsum.primis@cursusNunc.ca','password1'),('Kato','Roberson','Nulla.interdum@urna.net','password1'),('Colt','Travis','Nunc@Donec.net','password1'),('James','Ortiz','Nulla.facilisi.Sed@euismod.edu','password1'),('Dolan','Dillon','gravida.sagittis@Crasconvallis.edu','password1'),('Camille','Herrera','elit.elit.fermentum@nunc.net','password1'),('Rooney','Alexander','ante.Vivamus.non@malesuada.org','password1');
INSERT INTO "users" (first_name,second_name,email_address,password) VALUES ('Quin','Dunlap','pellentesque@natoquepenatibus.net','password1'),('Kaye','Davis','neque.sed.dictum@vulputatenisi.net','password1'),('Zenia','Short','mauris.erat.eget@amalesuadaid.net','password1'),('Audrey','Browning','est.Nunc.laoreet@magna.ca','password1'),('Belle','Willis','cursus@sapien.net','password1'),('Quintessa','Lindsay','Cum@disparturientmontes.com','password1'),('Gretchen','Castro','Nullam@ullamcorpervelit.com','password1'),('Griffin','Holt','velit.eget.laoreet@atlacus.ca','password1'),('Garrett','Lott','in.sodales.elit@Donecnon.edu','password1'),('Fitzgerald','Gould','aliquet.odio@egestas.edu','password1');
INSERT INTO "users" (first_name,second_name,email_address,password) VALUES ('Lucy','Lang','ut.pharetra@rutrum.net','password1'),('Herrod','Santiago','tellus.lorem.eu@nibhPhasellus.org','password1'),('Nevada','Norton','mi.eleifend.egestas@egettincidunt.com','password1'),('Ethan','West','mauris.ipsum.porta@Donecvitae.edu','password1'),('Velma','Sawyer','vehicula.Pellentesque@enim.net','password1'),('Kathleen','Torres','Maecenas@leoelementum.org','password1'),('Colin','Warren','bibendum@mus.com','password1'),('Eliana','Gonzales','at@auctorvitaealiquet.com','password1'),('Wylie','Pacheco','a.enim@sitamet.org','password1'),('Guinevere','Wheeler','Aenean@egetipsum.edu','password1');
INSERT INTO "users" (first_name,second_name,email_address,password) VALUES ('Vera','Francis','Proin.non.massa@Sedneque.com','password1'),('Joan','Gilliam','at.sem.molestie@Aliquam.net','password1'),('Gregory','Huber','pharetra.ut.pharetra@magnanecquam.edu','password1'),('Levi','Smith','interdum.ligula@ornare.net','password1'),('Hashim','Fox','montes.nascetur@Nullamutnisi.org','password1'),('Carlos','Mills','tortor.Integer.aliquam@risus.net','password1'),('Jacqueline','Craig','lorem.lorem@risusDonecegestas.ca','password1'),('Kylie','Rodriguez','imperdiet.dictum@egestasligula.co.uk','password1'),('Ryder','Pena','Quisque.porttitor@Donecegestas.edu','password1'),('Nasim','Koch','Curae.Donec.tincidunt@cursus.org','password1');
INSERT INTO "users" (first_name,second_name,email_address,password) VALUES ('Tyler','Whitney','augue.ut@nonummy.edu','password1'),('Devin','Singleton','Maecenas.mi.felis@dui.org','password1'),('Ashely','Middleton','Nulla@elitpellentesque.co.uk','password1'),('Vernon','Wood','parturient.montes@tempusmauris.com','password1'),('George','Rogers','felis.eget.varius@faucibusorci.net','password1'),('Cadman','Phillips','feugiat.nec.diam@egestas.org','password1'),('Tyrone','Calderon','a@blanditviverra.org','password1'),('Nathaniel','Dean','Nullam.velit@urnaNullamlobortis.edu','password1'),('Zahir','Beasley','id.erat.Etiam@tempus.edu','password1'),('Benedict','Rodgers','blandit.at@nequeseddictum.co.uk','password1');
INSERT INTO "users" (first_name,second_name,email_address,password) VALUES ('Reuben','Heath','sem.molestie@magnaet.co.uk','password1'),('Alana','Matthews','Mauris.ut.quam@Mauriseu.com','password1'),('Yolanda','Swanson','Vivamus.euismod@et.com','password1'),('Mira','Henderson','Aliquam@ipsum.co.uk','password1'),('Brett','Moore','aliquam@pellentesquetellus.com','password1'),('Ian','Long','dapibus.quam.quis@Integer.ca','password1'),('Bert','Todd','magna@augue.edu','password1'),('Hadley','Schwartz','non.cursus@imperdiet.org','password1'),('Charles','Farley','condimentum@nequenonquam.org','password1'),('Jermaine','Cain','et@Proin.co.uk','password1');
INSERT INTO "users" (first_name,second_name,email_address,password) VALUES ('Ivan','Turner','diam@vitae.edu','password1'),('Destiny','Hardin','egestas.Aliquam@lobortisClassaptent.edu','password1'),('Basia','Wise','Phasellus.at.augue@Integervitae.com','password1'),('Garth','Patton','Suspendisse.tristique@fringilla.co.uk','password1'),('Ina','Davidson','volutpat.nunc@sitametrisus.co.uk','password1'),('Julie','Baker','egestas@montesnasceturridiculus.net','password1'),('Barbara','Delaney','eu@scelerisque.com','password1'),('Brian','Daniels','tincidunt@ipsumsodales.org','password1'),('Eve','Fernandez','orci.Ut.sagittis@et.edu','password1'),('Grace','Whitaker','vitae@Quisqueporttitor.org','password1');
INSERT INTO "users" (first_name,second_name,email_address,password) VALUES ('Rinah','Blackwell','pede.et.risus@justoPraesentluctus.co.uk','password1'),('Hakeem','Phelps','litora.torquent@faucibusorciluctus.co.uk','password1'),('Grant','Walton','Praesent.interdum.ligula@NullafacilisisSuspendisse.com','password1'),('Ryan','Oneill','dignissim.lacus@Aeneanmassa.com','password1'),('Declan','Figueroa','magna@erateget.net','password1'),('Ifeoma','Norton','urna.convallis.erat@etcommodo.co.uk','password1'),('Aphrodite','Holt','rutrum.Fusce@insodales.net','password1'),('Hyacinth','Oconnor','arcu.imperdiet@Integerid.ca','password1'),('Zahir','Vaughn','Aliquam.tincidunt.nunc@sit.edu','password1'),('Madeline','Huber','iaculis.quis.pede@ligula.co.uk','password1');
INSERT INTO "users" (first_name,second_name,email_address,password) VALUES ('Heidi','Colon','in@Fuscediam.ca','password1'),('Trevor','Humphrey','Phasellus.libero@vel.co.uk','password1'),('Evelyn','Larson','amet@bibendum.edu','password1'),('Yeo','Cooley','arcu.ac.orci@sagittisDuis.edu','password1'),('Lana','Leonard','non.quam@Donecnon.com','password1'),('Darryl','Cox','tempor.bibendum@mi.edu','password1'),('Kylynn','Underwood','magna.Duis@augue.ca','password1'),('Nero','Humphrey','nascetur.ridiculus.mus@maurisut.co.uk','password1'),('Uma','Mercado','orci.Phasellus.dapibus@feugiat.com','password1'),('Hyatt','Blanchard','in@uterosnon.co.uk','password1');

do $$
	declare
	i INTEGER := 0;
begin
	loop
	exit when i = 100;
	i := i + 1;
	update "users" set username = (select concat(left(first_name, 1), second_name)) where id = i;
	end loop;
end $$;

select * from users;

drop table if exists products cascade;

create table products(
	id serial,
	display_name varchar(50),
	cost numeric(5,2),
	constraint products_pk primary key (id)
);

insert into products (display_name, cost)
	values 
	('Pork - Loin, Boneless', '0.94'),('Chicken - Wieners', '8.50'),('Nantucket Pine Orangebanana', '11.06'),
	('Wine - White, Cooking', '6.50'),('Chips Potato Swt Chilli Sour', '4.82'),('Skirt - 24 Foot', '4.78'),
	('Pasta - Orecchiette', '9.33'),('Wine - Balbach Riverside', '4.71'),('Crackers - Graham', '3.36'),
	('Artichoke - Hearts, Canned', '6.51'),('Bread - Roll, Canadian Dinner', '0.07'),('Steampan - Lid For Half Size', '4.46'),
	('Cheese - Pont Couvert', '6.51'),('Rootbeer', '1.89'),('Tea - Mint', '2.30'),
	('Muffin Orange Individual', '6.23'),('Lettuce - Mini Greens, Whole', '8.57'),('Red Cod Fillets - 225g', '2.85'),
	('Fond - Chocolate', '4.10'),('Pepper - Black, Whole', '5.28')
;

select * from products;

drop table if exists purchases;

create table purchases(
	user_id integer,
	product_id integer,
	quantity smallint not null,
	constraint user_id_fk foreign key(user_id) references users(id) match full on delete cascade,
	constraint product_id_fk foreign key(product_id) references products(id) match full on delete cascade
);

insert into purchases (user_id, product_id, quantity) 
	values
	(31, 11, 2),(21, 13, 1),(45, 14, 3),
	(41, 4, 3),(48, 11, 1),(79, 2, 2),
	(25, 9, 3),(25, 14, 2),(35, 12, 1),
	(55, 2, 3),(99, 12, 2),(78, 13, 3),
	(30, 1, 1),(3, 18, 3),(63, 4, 3),
	(26, 1, 1),(84, 20, 1),(43, 16, 3),
	(91, 9, 3),(77, 8, 2),(28, 11, 3),
	(47, 20, 3),(52, 10, 1),(63, 2, 2),
	(19, 5, 3),(20, 1, 3),(59, 3, 1),
	(10, 17, 2),(37, 18, 2),(39, 17, 3),
	(67, 6, 1),(77, 1, 3),(73, 11, 1),
	(4, 10, 2),(84, 6, 2),(40, 14, 1),
	(49, 20, 2),(65, 20, 2),(81, 2, 1),
	(48, 7, 1),(72, 13, 3),(2, 14, 1),
	(19, 20, 2),(43, 12, 1),(61, 6, 1),
	(60, 10, 2),(8, 2, 3),(74, 10, 2),
	(78, 15, 3),(92, 8, 3),(1, 5, 4)
;

select * from purchases;
