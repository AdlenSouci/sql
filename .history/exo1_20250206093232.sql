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




--insertions des données dans la table notes
insert into notes values("maths",10);
insert into notes values("anglais",12);
insert into notes values("francais",14);

select * from eleves
JOIN notes ON eleves.id = notes.matiere

select count(*) from eleves
where ages > 20

select*  from eleves





