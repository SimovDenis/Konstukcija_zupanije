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

# Grad Zagreb
insert into zupan(ime, prezime) values ('Tomislav', 'Tomašević');
insert into zupanija(naziv, zupan) values ('Grad Zagreb', 2);

# Vukovarsko-Srijemska
insert into zupan(ime, prezime) values ('Damir', 'Dekanić');
insert into zupanija(naziv, zupan) values ('Vukovarsko-Srijemska', 3);


