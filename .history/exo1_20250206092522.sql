create database bdd06012015;

create table eleves
{
    nom varchar(100),
    prenom varchar(100),
    tel float,
}
create table notes
{
    matiere varchar(100),
    notes float,

}
--insertions des données dans la table notes
insert into notes values("maths",10);
insert into notes values("anglais",12);
insert into notes values("francais",14);

select * from notes
JOIN 

