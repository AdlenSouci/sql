DROP TABLE notes;

CREATE TABLE notes (
    id_eleve VARCHAR(100),
    matiere VARCHAR(100),
    notes FLOAT
);

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

CREATE VIEW eleves_notes AS
SELECT e.nom, e.prenom, e.id, n.matiere, n.notes
FROM eleves e
JOIN notes n ON e.id = n.id_eleve;