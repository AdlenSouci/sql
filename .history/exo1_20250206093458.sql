create database bdd06012015;

create table eleves
{
    nom varchar(100),
    prenom varchar(100),
    tel float,
    id varchar(100),
    ages float,
}

create table notes
{
    matiere varchar(100),
    notes float,

}

--cree 10 eleves differents 
insert into eleves values("nom1","prenom1",1234567890,"id1",10);
insert into eleves values("nom2","prenom2",1234567890,"id2",10);
insert into eleves values("nom3","prenom3",1234567890,"id3",10);
insert into eleves values("nom4","prenom4",1234567890,"id4",10);
insert into eleves values("nom5","prenom5",1234567890,"id5",10);
insert into eleves values("nom6","prenom6",1234567890,"id6",10);
insert into eleves values("nom7","prenom7",1234567890,"id7",10);
insert into eleves values("nom8","prenom8",1234567890,"id8",10);
insert into eleves values("nom9","prenom9",1234567890,"id9",10);
insert into eleves values("nom10","prenom10",1234567890,"id10",10);



--insertions des données dans la table avec 30 notes par differentes matieres

insert into notes values("anglais",)


select * from eleves
JOIN notes ON eleves.id = notes.matiere

select count(*) from eleves
where ages > 20

select*  from eleves





