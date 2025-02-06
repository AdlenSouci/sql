

create table eleves (
    nom varchar(100),
    prenom varchar(100),
    tel float,
    id varchar(100),
    ages float
);

create table notes (
    matiere varchar(100),
    notes float
);

--cree 10 eleves differents 




--insertions des données dans la table avec 30 notes par differentes matieres

insert into notes values("anglais", 15);
insert into notes values("mathematiques", 8);
insert into notes values("physique", 18);
insert into notes values("francais", 10);
insert into notes values("histoire", 14);
insert into notes values("geographie", 16);
insert into notes values("sport", 20);
insert into notes values("anglais", 7);
insert into notes values("mathematiques", 19);
insert into notes values("physique", 11);
insert into notes values("francais", 13);
insert into notes values("geographie", 9);
insert into notes values("sport", 15);
insert into notes values("histoire", 6);
insert into notes values("anglais", 18);
insert into notes values("mathematiques", 12);
insert into notes values("physique", 14);
insert into notes values("francais", 8);
insert into notes values("geographie", 17);
insert into notes values("sport", 10);
insert into notes values("histoire", 19);
insert into notes values("anglais", 9);
insert into notes values("mathematiques", 16);
insert into notes values("physique", 13);
insert into notes values("francais", 15);
insert into notes values("geographie", 7);
insert into notes values("sport", 18);
insert into notes values("histoire", 11);

select* from eleves 
order by nom asc;


select * from eleves
JOIN notes ON eleves.id = notes.matiere
group by eleves.id

SELECT COUNT(*) 
FROM eleves 
WHERE ages > 20;












