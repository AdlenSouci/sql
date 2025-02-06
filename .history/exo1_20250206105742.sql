DROP DATABASE IF EXISTS bdd06012015;
CREATE DATABASE  bdd06012015 CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode-ciu;


create table eleves (
    nom varchar(100),
    prenom varchar(100),
    tel float,
    id varchar(100),
    ages float
);

create table notes (
    id_eleve varchar(100),
    matiere varchar(100),
    notes float
);

-- --cree 10 eleves differents 


INSERT INTO eleves (nom, prenom, tel, id, ages)
VALUES
('Dupont', 'Pierre', 123456789, 'E001', 12),
('Martin', 'Julie', 987654321, 'E002', 15),
('Durand', 'Thomas', 555555555, 'E003', 18),
('Lefebvre', 'Sophie', 444444444, 'E004', 11),
('Garcia', 'Lucas', 333333333, 'E005', 14),
('Roux', 'Anaïs', 222222222, 'E006', 16),
('Leclerc', 'Benoît', 111111111, 'E007', 13),
('Moreau', 'Léa', 999999999, 'E008', 17),
('Fournier', 'Alexandre', 888888888, 'E009', 10),
('Bertrand', 'Charlotte', 777777777, 'E010', 19);

-- --insertions des données dans la table avec 30 notes par differentes matieres
INSERT INTO notes (id_eleve, matiere, notes)
VALUES
('E001', 'anglais', 15),
('E001', 'mathematiques', 8),
('E001', 'physique', 18),
('E002', 'francais', 10),
('E002', 'histoire', 14),
('E002', 'geographie', 16),
('E003', 'sport', 20),
('E003', 'anglais', 7),
('E003', 'mathematiques', 19),
('E004', 'physique', 11),
('E004', 'francais', 13),
('E004', 'geographie', 9),
('E005', 'sport', 15),
('E005', 'histoire', 6),
('E005', 'anglais', 18),
('E006', 'mathematiques', 12),
('E006', 'physique', 14),
('E006', 'francais', 8),
('E007', 'geographie', 17),
('E007', 'sport', 10),
('E007', 'histoire', 19),
('E008', 'anglais', 9),
('E008', 'mathematiques', 16),
('E008', 'physique', 13),
('E009', 'francais', 15),
('E009', 'geographie', 7),
('E009', 'sport', 18),
('E010', 'histoire', 11);


select* from eleves 
order by nom asc;


select * from eleves
JOIN notes ON eleves.id = notes.matiere
group by eleves.id;

SELECT COUNT(*) 
FROM eleves 
WHERE ages > 20;

--afficher la moyenne des notes par matiere



select avg(notes)
from notes
group by matiere
order by matiere 
;






--creation de vue eleves avec leurs notes;
 
CREATE VIEW eleves_notes AS
SELECT e.nom, e.prenom, e.id, n.matiere, n.notes
FROM eleves e
JOIN notes n ON e.id = n.id_eleve;







CREATE USER 'jean-pierre'@'localhost' IDENTIFIED BY 'test'; 
GRANT CREATE, SELECT ON * . * TO 'jean-pierre'@'localhost';
