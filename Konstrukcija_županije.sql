drop database if exists konstrukcija_zupanije;
create database konstrukcija_zupanije;
use konstrukcija_zupanije;

create table zupanija(
    sifra int not null primary key auto_increment,
    naziv varchar(100),
    zupan int
);

create table zupan(
    sifra int not null primary key auto_increment,
    ime varchar(30),
    prezime varchar(50)
);

create table opcina(
    sifra int not null primary key auto_increment,
    zupanija int,
    naziv varchar(100)
);

create table mjesto(
    sifra int not null primary key auto_increment,
    opcina int,
    naziv varchar(100)
);

alter table zupanija add foreign key (zupan) references zupan(sifra);
alter table opcina add foreign key (zupanija) references zupanija(sifra);
alter table mjesto add foreign key (opcina) references opcina(sifra);

# Osječko-Baranjska
insert into zupan(ime, prezime) values ('Ivan', 'Anušić');
insert into zupanija(naziv, zupan) values ('Osječko-Baranjska', 1);

insert into opcina(zupanija, naziv) values (1, 'Belišće');
insert into opcina(zupanija, naziv) values (1, 'Valpovo');
insert into opcina(zupanija, naziv) values (1, 'Petrijevci');
insert into opcina(zupanija, naziv) values (1, 'Vuka');
insert into opcina(zupanija, naziv) values (1, 'Čepin');
insert into opcina(zupanija, naziv) values (1, 'Bilje');

insert into mjesto(opcina, naziv) values(1, 'Belišće');
insert into mjesto(opcina, naziv) values(1, 'Tiborjanci');
insert into mjesto(opcina, naziv) values(1, 'Gat');
insert into mjesto(opcina, naziv) values(2, 'Valpovo');
insert into mjesto(opcina, naziv) values(2, 'Šag');
insert into mjesto(opcina, naziv) values(2, 'Marjančaci');
insert into mjesto(opcina, naziv) values(3, 'Petrijevci');
insert into mjesto(opcina, naziv) values(3, 'Satnica');
insert into mjesto(opcina, naziv) values(4, 'Vuka');
insert into mjesto(opcina, naziv) values(4, 'Hrastovac');
insert into mjesto(opcina, naziv) values(5, 'Čepin');
insert into mjesto(opcina, naziv) values(6, 'Bilje');

# Grad Zagreb
insert into zupan(ime, prezime) values ('Tomislav', 'Tomašević');
insert into zupanija(naziv, zupan) values ('Grad Zagreb', 2);

insert into opcina(zupanija, naziv) values (2, 'Bistra');
insert into opcina(zupanija, naziv) values (2, 'Brckovljani');
insert into opcina(zupanija, naziv) values (2, 'Brdovec');
insert into opcina(zupanija, naziv) values (2, 'Dubravica');
insert into opcina(zupanija, naziv) values (2, 'Jakovlje');
insert into opcina(zupanija, naziv) values (2, 'Kravarsko');

insert into mjesto(opcina, naziv) values(7, 'Bukovje Bistransko');
insert into mjesto(opcina, naziv) values(7, 'Donja Bistra');
insert into mjesto(opcina, naziv) values(7, 'Gornja Bistra');
insert into mjesto(opcina, naziv) values(8, 'Brckovljani');
insert into mjesto(opcina, naziv) values(8, 'Donje Dvorišće');
insert into mjesto(opcina, naziv) values(8, 'Gornje Dvorišće');
insert into mjesto(opcina, naziv) values(8, 'Gračec');
insert into mjesto(opcina, naziv) values(9, 'Brdovec');
insert into mjesto(opcina, naziv) values(9, 'Donji Laduč');
insert into mjesto(opcina, naziv) values(10, 'Dubravica');
insert into mjesto(opcina, naziv) values(11, 'Igrišće');
insert into mjesto(opcina, naziv) values(12, 'Čakanec');

# Vukovarsko-Srijemska
insert into zupan(ime, prezime) values ('Damir', 'Dekanić');
insert into zupanija(naziv, zupan) values ('Vukovarsko-Srijemska', 3);

insert into opcina(zupanija, naziv) values (3, 'Borovo');
insert into opcina(zupanija, naziv) values (3, 'Gunja');
insert into opcina(zupanija, naziv) values (3, 'Trpinja');
insert into opcina(zupanija, naziv) values (3, 'Andrijaševci');
insert into opcina(zupanija, naziv) values (3, 'Babina Greda');
insert into opcina(zupanija, naziv) values (3, 'Tovarnik');

insert into mjesto(opcina, naziv) values(13, 'Borovo');
insert into mjesto(opcina, naziv) values(14, 'Gunja');
insert into mjesto(opcina, naziv) values(15, 'Bobota');
insert into mjesto(opcina, naziv) values(15, 'Trpinja');
insert into mjesto(opcina, naziv) values(15, 'Vera');
insert into mjesto(opcina, naziv) values(15, 'Ćelije');
insert into mjesto(opcina, naziv) values(15, 'Pačetin');
insert into mjesto(opcina, naziv) values(16, 'Rokovci');
insert into mjesto(opcina, naziv) values(16, 'Andrijaševci');
insert into mjesto(opcina, naziv) values(17, 'Babina Greda');
insert into mjesto(opcina, naziv) values(18, 'Ilača');
insert into mjesto(opcina, naziv) values(18, 'Tovarnik');

# Promjena imena mjesta i brisanje općina
update mjesto set naziv = 'Kitišanci' where naziv = 'Belišće';
update mjesto set naziv = 'Vinogradci' where naziv = 'Tiborjanci';
update mjesto set naziv = 'Veliškovci' where naziv = 'Gat';
update mjesto set naziv = 'Oborovo Bistransko' where naziv = 'Bukovje Bistransko';
update mjesto set naziv = 'Novaki Bistranski' where naziv = 'Donja Bistra';

delete from mjesto where naziv = 'Valpovo';
delete from mjesto where naziv = 'Marjančaci';
delete from mjesto where naziv = 'Šag';
delete from opcina where naziv = 'Valpovo';

delete from mjesto where naziv = 'Babina Greda';
delete from opcina where naziv = 'Babina Greda';

