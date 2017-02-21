
-- Dump File
--
-- Database is ported from MS Access
-- --------------------------------------------------------
-- Program Version 3.0.148

--CREATE DATABASE Discos;
--GO

USE Discos;
GO

-- borrado de tablas
IF OBJECT_ID('dbo.Puntuacion', 'U') IS NOT NULL 
  DROP TABLE dbo.Puntuacion; 
  
IF OBJECT_ID('dbo.Cliente', 'U') IS NOT NULL 
  DROP TABLE dbo.Cliente; 
  
IF OBJECT_ID('dbo.DiscoTipo', 'U') IS NOT NULL 
  DROP TABLE dbo.DiscoTipo; 
  
IF OBJECT_ID('dbo.Disco', 'U') IS NOT NULL 
  DROP TABLE dbo.Disco; 
  
IF OBJECT_ID('dbo.Interprete', 'U') IS NOT NULL 
  DROP TABLE dbo.Interprete; 

IF OBJECT_ID('dbo.Tipo', 'U') IS NOT NULL 
  DROP TABLE dbo.Tipo; 


--
-- Table structure for table 'Cliente'
--
CREATE TABLE Cliente (
  id INT primary key identity, 
  Nombre VARCHAR(255),
  Contrasenia VARCHAR(8) NOT NULL,
  Email VARCHAR(255), 
  FechaNacimiento DATETIME, 
  FechaRegistro DATETIME
);

--
-- Table structure for table 'Disco'
--
CREATE TABLE Disco (
  IdDisco INT NOT NULL primary key, 
  Titulo VARCHAR(255), 
  Agno FLOAT, 
  IdInterprete INT
);

--
-- Table structure for table 'DiscoTipo'
--
CREATE TABLE DiscoTipo (
  Id INT NOT NULL primary key, 
  IdDisco INT, 
  IdTipo INT
);

--
-- Table structure for table 'Interprete'
--
CREATE TABLE Interprete (
  Interprete VARCHAR(255), 
  IdInterprete INT NOT NULL primary key
);

--
-- Table structure for table 'Puntuacion'
--
CREATE TABLE Puntuacion (
  Id INT NOT NULL primary key, 
  Idcliente INT, 
  iddisco INT, 
  Puntuacion INT, 
  Fecha DATETIME
);

--
-- Table structure for table 'Tipo'
--
CREATE TABLE Tipo (
  IdTipo INT NOT NULL primary key, 
  tipo VARCHAR(255)
);

--
-- Dumping data for table 'Cliente'
--

SET DATEFORMAT ymd;

INSERT INTO Cliente ( Nombre, Contrasenia, Email, FechaNacimiento, FechaRegistro) VALUES ('Raymond Velasquez', '12345678', 'cursus@tempus.org', '1990-04-21 00:00:00', '2015-02-19 00:00:00');
INSERT INTO Cliente ( Nombre,  Contrasenia, Email, FechaNacimiento, FechaRegistro) VALUES ('Merrill Leblanc', '12345678','velit.eu.sem@imperdiet.org', '1985-10-28 00:00:00', '2011-05-03 00:00:00');
INSERT INTO Cliente ( Nombre,  Contrasenia, Email, FechaNacimiento, FechaRegistro) VALUES ('Dean Santos', '12345678','nunc@ametmetus.ca', '1977-06-20 00:00:00', '2013-12-23 00:00:00');
INSERT INTO Cliente ( Nombre,  Contrasenia, Email, FechaNacimiento, FechaRegistro) VALUES ('Ryan Hooper', '12345678','Aenean@non.edu', '1997-10-18 00:00:00', '2005-05-27 00:00:00');
INSERT INTO Cliente ( Nombre,  Contrasenia, Email, FechaNacimiento, FechaRegistro) VALUES ('John Mcknight', '12345678','pharetra.Quisque@magnanec.com', '1965-12-07 00:00:00', '2015-04-12 00:00:00');
INSERT INTO Cliente ( Nombre,  Contrasenia, Email, FechaNacimiento, FechaRegistro) VALUES ('John Watson', '12345678','Nulla.facilisi.Sed@facilisislorem.edu', '1961-03-18 00:00:00', '2005-12-09 00:00:00');
INSERT INTO Cliente ( Nombre,  Contrasenia, Email, FechaNacimiento, FechaRegistro) VALUES ('Lucian Pugh', '12345678','ornare.tortor.at@primisin.org', '1972-09-03 00:00:00', '2008-04-28 00:00:00');
INSERT INTO Cliente ( Nombre,  Contrasenia, Email, FechaNacimiento, FechaRegistro) VALUES ('Acton Mckay', '12345678','quam.Pellentesque.habitant@neque.ca', '1995-03-14 00:00:00', '2014-10-30 00:00:00');
INSERT INTO Cliente ( Nombre,  Contrasenia, Email, FechaNacimiento, FechaRegistro) VALUES ('Bevis Sosa', '12345678','at@odiovel.ca', '1998-07-15 00:00:00', '2013-10-02 00:00:00');
INSERT INTO Cliente ( Nombre,  Contrasenia, Email, FechaNacimiento, FechaRegistro) VALUES ('Zane Buckley', '12345678','nisl.Quisque@eleifend.org', '1999-09-20 00:00:00', '2013-02-19 00:00:00');
INSERT INTO Cliente ( Nombre,  Contrasenia, Email, FechaNacimiento, FechaRegistro) VALUES ('Joshua Campbell', '12345678','eu.eleifend.nec@velesttempor.edu', '1989-11-03 00:00:00', '2009-05-21 00:00:00');
INSERT INTO Cliente ( Nombre,  Contrasenia, Email, FechaNacimiento, FechaRegistro) VALUES ('Hayden Chavez', '12345678','tellus.eu.augue@necluctusfelis.com', '1952-04-07 00:00:00', '2007-03-23 00:00:00');
INSERT INTO Cliente ( Nombre,  Contrasenia, Email, FechaNacimiento, FechaRegistro) VALUES ('Raymond Henry', '12345678','Quisque@aptent.org', '1992-10-07 00:00:00', '2007-10-20 00:00:00');
INSERT INTO Cliente ( Nombre,  Contrasenia, Email, FechaNacimiento, FechaRegistro) VALUES ('Oleg Park', '12345678','primis.in@acfeugiatnon.com', '1960-12-17 00:00:00', '2009-08-15 00:00:00');
INSERT INTO Cliente ( Nombre,  Contrasenia, Email, FechaNacimiento, FechaRegistro) VALUES ('Tad Fuentes', '12345678','dolor.elit.pellentesque@interdumfeugiat.org', '1970-10-14 00:00:00', '2009-01-19 00:00:00');
INSERT INTO Cliente ( Nombre,  Contrasenia, Email, FechaNacimiento, FechaRegistro) VALUES ('Emmanuel Cox', '12345678','dictum.eu.placerat@eunibh.edu', '1996-02-11 00:00:00', '2015-07-22 00:00:00');
INSERT INTO Cliente ( Nombre,  Contrasenia, Email, FechaNacimiento, FechaRegistro) VALUES ('Bruno Baird', '12345678','lobortis.quis@Proindolor.ca', '1989-06-18 00:00:00', '2010-01-08 00:00:00');
INSERT INTO Cliente ( Nombre,  Contrasenia, Email, FechaNacimiento, FechaRegistro) VALUES ('Nehru Atkins', '12345678','tempor.bibendum@nonleoVivamus.edu', '1965-11-07 00:00:00', '2007-05-06 00:00:00');
INSERT INTO Cliente ( Nombre,  Contrasenia, Email, FechaNacimiento, FechaRegistro) VALUES ('Jordan Tanner', '12345678','libero.Integer@aliquet.ca', '1964-02-29 00:00:00', '2011-08-27 00:00:00');
INSERT INTO Cliente ( Nombre,  Contrasenia, Email, FechaNacimiento, FechaRegistro) VALUES ('Mannix Cleveland', '12345678','libero.dui@aenim.ca', '1977-07-08 00:00:00', '2012-02-13 00:00:00');
INSERT INTO Cliente ( Nombre,  Contrasenia, Email, FechaNacimiento, FechaRegistro) VALUES ('Peter Norton', '12345678','semper@placeratCrasdictum.ca', '1968-08-15 00:00:00', '2008-09-02 00:00:00');
INSERT INTO Cliente ( Nombre,  Contrasenia, Email, FechaNacimiento, FechaRegistro) VALUES ('Buckminster Floyd', '12345678','ac.turpis.egestas@tempor.com', '1974-08-31 00:00:00', '2006-03-09 00:00:00');
INSERT INTO Cliente ( Nombre,  Contrasenia, Email, FechaNacimiento, FechaRegistro) VALUES ('Allistair Blanchard', '12345678','pretium.et@risusQuisquelibero.ca', '1996-06-25 00:00:00', '2014-07-17 00:00:00');
INSERT INTO Cliente ( Nombre,  Contrasenia, Email, FechaNacimiento, FechaRegistro) VALUES ('Carter Franco', '12345678','erat.neque.non@Infaucibus.ca', '1991-12-24 00:00:00', '2010-10-30 00:00:00');
INSERT INTO Cliente ( Nombre,  Contrasenia, Email, FechaNacimiento, FechaRegistro) VALUES ('Stone Hester', '12345678','Cras.dolor@vel.org', '1959-07-25 00:00:00', '2014-05-18 00:00:00');
INSERT INTO Cliente ( Nombre,  Contrasenia, Email, FechaNacimiento, FechaRegistro) VALUES ('Raphael Chaney', '12345678','leo.Vivamus@pellentesqueSed.ca', '1996-04-08 00:00:00', '2012-10-06 00:00:00');
INSERT INTO Cliente ( Nombre,  Contrasenia, Email, FechaNacimiento, FechaRegistro) VALUES ('Preston Donaldson', '12345678','velit@Integer.com', '1991-12-15 00:00:00', '2011-09-08 00:00:00');
INSERT INTO Cliente ( Nombre,  Contrasenia, Email, FechaNacimiento, FechaRegistro) VALUES ('Dolan Howe', '12345678','ipsum.sodales@nonummyFuscefermentum.com', '1966-04-22 00:00:00', '2008-03-21 00:00:00');
INSERT INTO Cliente ( Nombre,  Contrasenia, Email, FechaNacimiento, FechaRegistro) VALUES ('Cullen Kerr', '12345678','vulputate@venenatisamagna.ca', '1958-05-28 00:00:00', '2011-12-26 00:00:00');
INSERT INTO Cliente ( Nombre,  Contrasenia, Email, FechaNacimiento, FechaRegistro) VALUES ('Abraham Hendrix', '12345678','elit@atortor.ca', '1992-05-30 00:00:00', '2012-06-11 00:00:00');
INSERT INTO Cliente ( Nombre,  Contrasenia, Email, FechaNacimiento, FechaRegistro) VALUES ('Alexander Roth', '12345678','fermentum.risus@dui.org', '1987-09-14 00:00:00', '2013-12-08 00:00:00');
INSERT INTO Cliente ( Nombre,  Contrasenia, Email, FechaNacimiento, FechaRegistro) VALUES ('Francis Cooper', '12345678','sed@eleifendCras.edu', '1966-12-05 00:00:00', '2007-08-19 00:00:00');
INSERT INTO Cliente ( Nombre,  Contrasenia, Email, FechaNacimiento, FechaRegistro) VALUES ('Graiden Moody', '12345678','nascetur.ridiculus@Proin.ca', '1959-06-03 00:00:00', '2006-11-09 00:00:00');
INSERT INTO Cliente ( Nombre,  Contrasenia, Email, FechaNacimiento, FechaRegistro) VALUES ('Amal Harrington', '12345678','libero.mauris@elitfermentumrisus.ca', '1987-06-10 00:00:00', '2008-10-14 00:00:00');
INSERT INTO Cliente ( Nombre,  Contrasenia, Email, FechaNacimiento, FechaRegistro) VALUES ('Fulton Kennedy', '12345678','egestas.urna@nulla.edu', '1960-02-23 00:00:00', '2006-09-27 00:00:00');
INSERT INTO Cliente ( Nombre,  Contrasenia, Email, FechaNacimiento, FechaRegistro) VALUES ('Emmanuel Rutledge', '12345678','aliquet.lobortis.nisi@magna.com', '1971-02-20 00:00:00', '2008-10-23 00:00:00');
INSERT INTO Cliente ( Nombre,  Contrasenia, Email, FechaNacimiento, FechaRegistro) VALUES ('Malcolm Evans', '12345678','senectus.et@commodoipsumSuspendisse.org', '1999-10-08 00:00:00', '2009-08-25 00:00:00');
INSERT INTO Cliente ( Nombre,  Contrasenia, Email, FechaNacimiento, FechaRegistro) VALUES ('Allistair Macdonald', '12345678','interdum.enim@elementumpurusaccumsan.edu', '1992-04-30 00:00:00', '2013-02-18 00:00:00');
INSERT INTO Cliente ( Nombre,  Contrasenia, Email, FechaNacimiento, FechaRegistro) VALUES ('Orson Ryan', '12345678','vulputate@diam.org', '1979-11-08 00:00:00', '2007-02-13 00:00:00');
INSERT INTO Cliente ( Nombre,  Contrasenia, Email, FechaNacimiento, FechaRegistro) VALUES ('Kieran Roberson', '12345678','mi.ac.mattis@nonmagna.org', '1990-09-22 00:00:00', '2012-01-30 00:00:00');
INSERT INTO Cliente ( Nombre,  Contrasenia, Email, FechaNacimiento, FechaRegistro) VALUES ('Kibo Holmes', '12345678','lorem.luctus.ut@Suspendissealiquetmolestie.com', '1957-04-28 00:00:00', '2010-08-24 00:00:00');
INSERT INTO Cliente ( Nombre,  Contrasenia, Email, FechaNacimiento, FechaRegistro) VALUES ('Leo Hobbs', '12345678','nec@risusDonecnibh.org', '1991-04-11 00:00:00', '2012-05-18 00:00:00');
INSERT INTO Cliente ( Nombre,  Contrasenia, Email, FechaNacimiento, FechaRegistro) VALUES ('Tyrone Kline', '12345678','fringilla.ornare.placerat@et.ca', '1981-02-03 00:00:00', '2009-01-02 00:00:00');
INSERT INTO Cliente ( Nombre,  Contrasenia, Email, FechaNacimiento, FechaRegistro) VALUES ('Lawrence Kirkland', '12345678','ut@erat.edu', '1989-11-09 00:00:00', '2005-07-28 00:00:00');
INSERT INTO Cliente ( Nombre,  Contrasenia, Email, FechaNacimiento, FechaRegistro) VALUES ('Stephen Meadows', '12345678','Duis.elementum.dui@ipsum.org', '1992-06-10 00:00:00', '2012-02-04 00:00:00');
INSERT INTO Cliente ( Nombre,  Contrasenia, Email, FechaNacimiento, FechaRegistro) VALUES ('Paul Dickerson', '12345678','erat@mollisPhasellus.edu', '1981-11-28 00:00:00', '2006-10-04 00:00:00');
INSERT INTO Cliente ( Nombre,  Contrasenia, Email, FechaNacimiento, FechaRegistro) VALUES ('Lucian Marks', '12345678','vestibulum.Mauris.magna@magna.edu', '1985-12-01 00:00:00', '2014-09-08 00:00:00');
INSERT INTO Cliente ( Nombre,  Contrasenia, Email, FechaNacimiento, FechaRegistro) VALUES ('Gannon Manning', '12345678','nisl@condimentum.edu', '1993-11-25 00:00:00', '2013-09-26 00:00:00');
INSERT INTO Cliente ( Nombre,  Contrasenia, Email, FechaNacimiento, FechaRegistro) VALUES ('Ezra Goodman', '12345678','neque.Sed@uteratSed.org', '1975-11-11 00:00:00', '2011-11-25 00:00:00');
INSERT INTO Cliente ( Nombre,  Contrasenia, Email, FechaNacimiento, FechaRegistro) VALUES ('Acton Solomon', '12345678','Phasellus.fermentum@a.edu', '1991-09-23 00:00:00', '2014-03-08 00:00:00');
INSERT INTO Cliente ( Nombre,  Contrasenia, Email, FechaNacimiento, FechaRegistro) VALUES ('Peter Hunter', '12345678','urna@odio.ca', '1985-01-20 00:00:00', '2007-07-21 00:00:00');
INSERT INTO Cliente ( Nombre,  Contrasenia, Email, FechaNacimiento, FechaRegistro) VALUES ('Basil Morris', '12345678','tempus@mauris.com', '1989-10-23 00:00:00', '2007-06-05 00:00:00');
INSERT INTO Cliente ( Nombre,  Contrasenia, Email, FechaNacimiento, FechaRegistro) VALUES ('Deacon Leblanc', '12345678','aliquet.metus.urna@sedtortorInteger.ca', '1985-03-24 00:00:00', '2010-02-03 00:00:00');
INSERT INTO Cliente ( Nombre,  Contrasenia, Email, FechaNacimiento, FechaRegistro) VALUES ('Samson Bryan', '12345678','fringilla.cursus@etcommodoat.org', '1952-12-26 00:00:00', '2011-12-25 00:00:00');
INSERT INTO Cliente ( Nombre,  Contrasenia, Email, FechaNacimiento, FechaRegistro) VALUES ('Arthur Foster', '12345678','feugiat.tellus.lorem@elitpharetraut.edu', '1992-02-19 00:00:00', '2008-08-15 00:00:00');
INSERT INTO Cliente ( Nombre,  Contrasenia, Email, FechaNacimiento, FechaRegistro) VALUES ('Quinlan Walker', '12345678','facilisis@justofaucibus.com', '1971-05-02 00:00:00', '2007-01-25 00:00:00');
INSERT INTO Cliente ( Nombre,  Contrasenia, Email, FechaNacimiento, FechaRegistro) VALUES ('Quinlan Mercado', '12345678','libero.mauris.aliquam@lobortis.org', '1965-11-09 00:00:00', '2005-06-02 00:00:00');
INSERT INTO Cliente ( Nombre,  Contrasenia, Email, FechaNacimiento, FechaRegistro) VALUES ('Aladdin Kane', '12345678','eros.Proin@nonsollicitudin.org', '1952-04-24 00:00:00', '2011-07-24 00:00:00');
INSERT INTO Cliente ( Nombre,  Contrasenia, Email, FechaNacimiento, FechaRegistro) VALUES ('Keane Valdez', '12345678','dolor.dolor@Nam.com', '1976-07-25 00:00:00', '2008-09-21 00:00:00');
INSERT INTO Cliente ( Nombre,  Contrasenia, Email, FechaNacimiento, FechaRegistro) VALUES ('Yardley Bond', '12345678','tellus.id.nunc@Vestibulum.org', '1992-12-06 00:00:00', '2005-11-02 00:00:00');
INSERT INTO Cliente ( Nombre,  Contrasenia, Email, FechaNacimiento, FechaRegistro) VALUES ('Kieran Frye', '12345678','dapibus.ligula.Aliquam@vitaerisusDuis.com', '1973-03-03 00:00:00', '2005-12-01 00:00:00');
INSERT INTO Cliente ( Nombre,  Contrasenia, Email, FechaNacimiento, FechaRegistro) VALUES ('Axel Farley', '12345678','Sed@nonmassanon.ca', '1967-09-22 00:00:00', '2006-02-21 00:00:00');
INSERT INTO Cliente ( Nombre,  Contrasenia, Email, FechaNacimiento, FechaRegistro) VALUES ('Flynn Molina', '12345678','mattis.velit.justo@dolorquam.org', '1991-08-07 00:00:00', '2011-11-11 00:00:00');
INSERT INTO Cliente ( Nombre,  Contrasenia, Email, FechaNacimiento, FechaRegistro) VALUES ('Perry Cervantes', '12345678','scelerisque@blandit.org', '1950-06-17 00:00:00', '2007-03-24 00:00:00');
INSERT INTO Cliente ( Nombre,  Contrasenia, Email, FechaNacimiento, FechaRegistro) VALUES ('Damon Morton', '12345678','et@Donecfeugiatmetus.edu', '1995-08-27 00:00:00', '2008-07-26 00:00:00');
INSERT INTO Cliente ( Nombre,  Contrasenia, Email, FechaNacimiento, FechaRegistro) VALUES ('Thor Vaughan', '12345678','imperdiet.non@diam.edu', '1969-06-01 00:00:00', '2013-09-27 00:00:00');
INSERT INTO Cliente ( Nombre,  Contrasenia, Email, FechaNacimiento, FechaRegistro) VALUES ('Wing Gutierrez', '12345678','penatibus@consequat.com', '1960-05-29 00:00:00', '2007-03-04 00:00:00');
INSERT INTO Cliente ( Nombre,  Contrasenia, Email, FechaNacimiento, FechaRegistro) VALUES ('Julian Rojas', '12345678','pede.ultrices.a@cursuspurusNullam.edu', '1971-05-13 00:00:00', '2014-09-17 00:00:00');
INSERT INTO Cliente ( Nombre,  Contrasenia, Email, FechaNacimiento, FechaRegistro) VALUES ('Chaim Mcfarland', '12345678','Donec.felis@Nulla.com', '1975-03-28 00:00:00', '2012-09-23 00:00:00');
INSERT INTO Cliente ( Nombre,  Contrasenia, Email, FechaNacimiento, FechaRegistro) VALUES ('Ciaran Santana','12345678', 'non.cursus@aliquetvelvulputate.edu', '1978-03-30 00:00:00', '2005-12-27 00:00:00');
INSERT INTO Cliente ( Nombre,  Contrasenia, Email, FechaNacimiento, FechaRegistro) VALUES ('Vance Wagner', '12345678','sit@faucibus.edu', '1954-07-31 00:00:00', '2005-09-02 00:00:00');
INSERT INTO Cliente ( Nombre,  Contrasenia, Email, FechaNacimiento, FechaRegistro) VALUES ('Driscoll Willis', '12345678','turpis.egestas@lectuspedeultrices.edu', '1989-11-30 00:00:00', '2013-08-25 00:00:00');
INSERT INTO Cliente ( Nombre,  Contrasenia, Email, FechaNacimiento, FechaRegistro) VALUES ('Neville Chang', '12345678','nisi@vitaediamProin.com', '1967-04-25 00:00:00', '2012-07-31 00:00:00');
INSERT INTO Cliente ( Nombre,  Contrasenia, Email, FechaNacimiento, FechaRegistro) VALUES ('Aaron Howell', '12345678','molestie.in@quis.com', '1977-02-18 00:00:00', '2007-10-04 00:00:00');
INSERT INTO Cliente ( Nombre,  Contrasenia, Email, FechaNacimiento, FechaRegistro) VALUES ('Abbot Garrison', '12345678','lacus.Cras@Nam.ca', '1990-02-06 00:00:00', '2008-11-23 00:00:00');
INSERT INTO Cliente ( Nombre,  Contrasenia, Email, FechaNacimiento, FechaRegistro) VALUES ('Kato Russell', '12345678','sit@Proinsedturpis.org', '1999-02-23 00:00:00', '2008-10-10 00:00:00');
INSERT INTO Cliente ( Nombre,  Contrasenia, Email, FechaNacimiento, FechaRegistro) VALUES ('Julian Solis', '12345678','aptent.taciti.sociosqu@Quisque.edu', '1959-10-06 00:00:00', '2012-03-02 00:00:00');
INSERT INTO Cliente ( Nombre,  Contrasenia, Email, FechaNacimiento, FechaRegistro) VALUES ('Quamar Sloan', '12345678','magna.Lorem@elementum.ca', '1961-10-31 00:00:00', '2008-03-09 00:00:00');
INSERT INTO Cliente ( Nombre,  Contrasenia, Email, FechaNacimiento, FechaRegistro) VALUES ('Keaton Frank', '12345678','hendrerit@estarcu.org', '1967-12-06 00:00:00', '2009-02-15 00:00:00');
INSERT INTO Cliente ( Nombre,  Contrasenia, Email, FechaNacimiento, FechaRegistro) VALUES ('Thomas Ferguson', '12345678','lectus.convallis@Cras.com', '1956-02-13 00:00:00', '2007-08-19 00:00:00');
INSERT INTO Cliente ( Nombre,  Contrasenia, Email, FechaNacimiento, FechaRegistro) VALUES ('Stephen Whitley', '12345678','leo@Nuncsollicitudincommodo.org', '1950-02-07 00:00:00', '2010-09-11 00:00:00');
INSERT INTO Cliente ( Nombre,  Contrasenia, Email, FechaNacimiento, FechaRegistro) VALUES ('Scott Banks', '12345678','venenatis.vel.faucibus@Aliquamrutrumlorem.com', '1955-05-08 00:00:00', '2014-03-13 00:00:00');
INSERT INTO Cliente ( Nombre,  Contrasenia, Email, FechaNacimiento, FechaRegistro) VALUES ('Chandler Kirby', '12345678','Proin.dolor@nisinibhlacinia.com', '1988-10-27 00:00:00', '2011-05-26 00:00:00');
INSERT INTO Cliente ( Nombre,  Contrasenia, Email, FechaNacimiento, FechaRegistro) VALUES ('Hector Hendrix', '12345678','et.lacinia.vitae@Nullatemporaugue.ca', '1991-01-09 00:00:00', '2011-06-25 00:00:00');
INSERT INTO Cliente ( Nombre,  Contrasenia, Email, FechaNacimiento, FechaRegistro) VALUES ('Preston Mcleod', '12345678','Cum@semperauctor.edu', '1993-05-14 00:00:00', '2009-02-20 00:00:00');
INSERT INTO Cliente ( Nombre,  Contrasenia, Email, FechaNacimiento, FechaRegistro) VALUES ('George Cantrell', '12345678','mollis.vitae.posuere@tellus.ca', '1993-02-14 00:00:00', '2011-03-14 00:00:00');
INSERT INTO Cliente ( Nombre,  Contrasenia, Email, FechaNacimiento, FechaRegistro) VALUES ('Armand Velasquez', '12345678','placerat@musDonec.edu', '1962-08-31 00:00:00', '2008-04-13 00:00:00');
INSERT INTO Cliente ( Nombre,  Contrasenia, Email, FechaNacimiento, FechaRegistro) VALUES ('Cooper Hardin', '12345678','Donec.dignissim@CurabiturdictumPhasellus.edu', '1987-09-29 00:00:00', '2007-07-20 00:00:00');
INSERT INTO Cliente ( Nombre,  Contrasenia, Email, FechaNacimiento, FechaRegistro) VALUES ('Isaiah Hammond', '12345678','aptent.taciti.sociosqu@tellusimperdietnon.ca', '1985-05-28 00:00:00', '2010-06-20 00:00:00');
INSERT INTO Cliente ( Nombre,  Contrasenia, Email, FechaNacimiento, FechaRegistro) VALUES ('Kareem Clements', '12345678','ullamcorper.eu.euismod@Vivamus.edu', '1993-11-22 00:00:00', '2006-05-22 00:00:00');
INSERT INTO Cliente ( Nombre,  Contrasenia, Email, FechaNacimiento, FechaRegistro) VALUES ('Jack English', '12345678','eget@quam.ca', '1966-09-18 00:00:00', '2015-03-04 00:00:00');
INSERT INTO Cliente ( Nombre,  Contrasenia, Email, FechaNacimiento, FechaRegistro) VALUES ('Leonard Barrett', '12345678','sem.egestas.blandit@enimconsequat.org', '1988-06-25 00:00:00', '2006-11-18 00:00:00');
INSERT INTO Cliente ( Nombre,  Contrasenia, Email, FechaNacimiento, FechaRegistro) VALUES ('Cole Graham', '12345678','Ut.semper@massaSuspendisseeleifend.ca', '1972-03-04 00:00:00', '2007-10-16 00:00:00');
INSERT INTO Cliente ( Nombre,  Contrasenia, Email, FechaNacimiento, FechaRegistro) VALUES ('Noah Harrington', '12345678','Duis.ac.arcu@loremut.edu', '1982-02-06 00:00:00', '2014-11-05 00:00:00');
INSERT INTO Cliente ( Nombre,  Contrasenia, Email, FechaNacimiento, FechaRegistro) VALUES ('Tate Levine', '12345678','Nullam.feugiat@Donecnibhenim.ca', '1956-06-16 00:00:00', '2011-09-12 00:00:00');
INSERT INTO Cliente ( Nombre,  Contrasenia, Email, FechaNacimiento, FechaRegistro) VALUES ('Zephania Stark', '12345678','pretium.aliquet.metus@uterosnon.com', '1991-01-04 00:00:00', '2014-10-09 00:00:00');
INSERT INTO Cliente ( Nombre,  Contrasenia, Email, FechaNacimiento, FechaRegistro) VALUES ('Eric Powell', '12345678','cursus@quis.com', '1974-03-03 00:00:00', '2009-07-23 00:00:00');
INSERT INTO Cliente ( Nombre,  Contrasenia, Email, FechaNacimiento, FechaRegistro) VALUES ('Ross Albert', '12345678','Proin@vulputateullamcorper.ca', '1957-10-11 00:00:00', '2012-11-13 00:00:00');
INSERT INTO Cliente ( Nombre,  Contrasenia, Email, FechaNacimiento, FechaRegistro) VALUES ('Xander Weber', '12345678','blandit@seddolor.edu', '1950-11-26 00:00:00', '2011-04-27 00:00:00');
INSERT INTO Cliente ( Nombre,  Contrasenia, Email, FechaNacimiento, FechaRegistro) VALUES ('Dexter Allison', '12345678','non@acmattisvelit.ca', '1957-05-16 00:00:00', '2014-07-26 00:00:00');
-- 100 records

--
-- Dumping data for table 'Disco'
--

INSERT INTO Disco (IdDisco, Titulo, Agno, IdInterprete) VALUES (1, 'Dancing Queen', 1976, 1);
INSERT INTO Disco (IdDisco, Titulo, Agno, IdInterprete) VALUES (2, 'Ring My Bell', 1979, 2);
INSERT INTO Disco (IdDisco, Titulo, Agno, IdInterprete) VALUES (3, 'Yes Sir, I Can Boogie', 1977, 3);
INSERT INTO Disco (IdDisco, Titulo, Agno, IdInterprete) VALUES (4, 'Copacabana', NULL, 4);
INSERT INTO Disco (IdDisco, Titulo, Agno, IdInterprete) VALUES (5, 'You''re The First, My Last, My Everything', 1974, 5);
INSERT INTO Disco (IdDisco, Titulo, Agno, IdInterprete) VALUES (6, 'Love''s Theme', NULL, 6);
INSERT INTO Disco (IdDisco, Titulo, Agno, IdInterprete) VALUES (7, 'Saturday Night Fever', 1977, 7);
INSERT INTO Disco (IdDisco, Titulo, Agno, IdInterprete) VALUES (8, 'You Should Be Dancing', 1976, 7);
INSERT INTO Disco (IdDisco, Titulo, Agno, IdInterprete) VALUES (9, 'Stayin'' Alive', 1977, 7);
INSERT INTO Disco (IdDisco, Titulo, Agno, IdInterprete) VALUES (10, 'Jive Talkin''', 1975, 7);
INSERT INTO Disco (IdDisco, Titulo, Agno, IdInterprete) VALUES (11, 'If I Can''t Have You', 1977, 7);
INSERT INTO Disco (IdDisco, Titulo, Agno, IdInterprete) VALUES (12, 'Tragedy', 1979, 7);
INSERT INTO Disco (IdDisco, Titulo, Agno, IdInterprete) VALUES (13, 'Heart Of Glass', 1978, 8);
INSERT INTO Disco (IdDisco, Titulo, Agno, IdInterprete) VALUES (14, 'Daddy Cool', 1976, 9);
INSERT INTO Disco (IdDisco, Titulo, Agno, IdInterprete) VALUES (15, 'Rivers of Babylon', 1978, 9);
INSERT INTO Disco (IdDisco, Titulo, Agno, IdInterprete) VALUES (16, 'We Kill The World (Don�t Kill The World)', 1981, 9);
INSERT INTO Disco (IdDisco, Titulo, Agno, IdInterprete) VALUES (17, 'Can''t Take My Eyes off You', 1982, 10);
INSERT INTO Disco (IdDisco, Titulo, Agno, IdInterprete) VALUES (18, 'I''m Every Woman', 1978, 11);
INSERT INTO Disco (IdDisco, Titulo, Agno, IdInterprete) VALUES (19, 'Love To Love You Baby', 1975, 12);
INSERT INTO Disco (IdDisco, Titulo, Agno, IdInterprete) VALUES (20, 'Hot Stuff', 1979, 12);
INSERT INTO Disco (IdDisco, Titulo, Agno, IdInterprete) VALUES (21, 'No More Tears (Enough Is Enough)', 1979, 13);
INSERT INTO Disco (IdDisco, Titulo, Agno, IdInterprete) VALUES (22, 'Last Train To London', 1979, 14);
INSERT INTO Disco (IdDisco, Titulo, Agno, IdInterprete) VALUES (23, 'December, 1963 (Oh, What a Night)', 1975, 15);
INSERT INTO Disco (IdDisco, Titulo, Agno, IdInterprete) VALUES (24, 'Can''t Take My Eyes off You', NULL, 16);
INSERT INTO Disco (IdDisco, Titulo, Agno, IdInterprete) VALUES (25, 'I Will Survive', 1978, 16);
INSERT INTO Disco (IdDisco, Titulo, Agno, IdInterprete) VALUES (26, 'Never Can Say Goodbye', 1974, 16);
INSERT INTO Disco (IdDisco, Titulo, Agno, IdInterprete) VALUES (27, 'The Love I Lost', 1973, 17);
INSERT INTO Disco (IdDisco, Titulo, Agno, IdInterprete) VALUES (28, 'Boogie Nights', 1976, 18);
INSERT INTO Disco (IdDisco, Titulo, Agno, IdInterprete) VALUES (29, 'Rock the Boat', 1974, 19);
INSERT INTO Disco (IdDisco, Titulo, Agno, IdInterprete) VALUES (30, 'Fame', 1980, 20);
INSERT INTO Disco (IdDisco, Titulo, Agno, IdInterprete) VALUES (31, 'Flashdance...What A Feeling', 1983, 20);
INSERT INTO Disco (IdDisco, Titulo, Agno, IdInterprete) VALUES (32, 'Dancing Machine', 1974, 21);
INSERT INTO Disco (IdDisco, Titulo, Agno, IdInterprete) VALUES (33, 'Only The Strong Survive', 1968, 22);
INSERT INTO Disco (IdDisco, Titulo, Agno, IdInterprete) VALUES (34, 'Love Is In The Air', 1977, 23);
INSERT INTO Disco (IdDisco, Titulo, Agno, IdInterprete) VALUES (35, 'I Was Made For Loving You', 1979, 24);
INSERT INTO Disco (IdDisco, Titulo, Agno, IdInterprete) VALUES (36, 'Celebration', 1980, 25);
INSERT INTO Disco (IdDisco, Titulo, Agno, IdInterprete) VALUES (37, 'Lady Marmalade', 1974, 26);
INSERT INTO Disco (IdDisco, Titulo, Agno, IdInterprete) VALUES (38, 'Gloria', 1982, 27);
INSERT INTO Disco (IdDisco, Titulo, Agno, IdInterprete) VALUES (39, 'You Make Me Feel Like Dancing', 1976, 28);
INSERT INTO Disco (IdDisco, Titulo, Agno, IdInterprete) VALUES (40, 'Your Love', 1981, 29);
INSERT INTO Disco (IdDisco, Titulo, Agno, IdInterprete) VALUES (41, 'Designer Music', 1981, 30);
INSERT INTO Disco (IdDisco, Titulo, Agno, IdInterprete) VALUES (42, 'Funkytown', 1980, 30);
INSERT INTO Disco (IdDisco, Titulo, Agno, IdInterprete) VALUES (43, 'Lucky Star', 1983, 31);
INSERT INTO Disco (IdDisco, Titulo, Agno, IdInterprete) VALUES (44, 'Soul Makossa', 1972, 32);
INSERT INTO Disco (IdDisco, Titulo, Agno, IdInterprete) VALUES (45, 'Got To Give It Up', 1977, 33);
INSERT INTO Disco (IdDisco, Titulo, Agno, IdInterprete) VALUES (46, 'In My House', 1985, 34);
INSERT INTO Disco (IdDisco, Titulo, Agno, IdInterprete) VALUES (47, 'Off the Wall', 1979, 35);
INSERT INTO Disco (IdDisco, Titulo, Agno, IdInterprete) VALUES (48, 'Thriller', 1984, 35);
INSERT INTO Disco (IdDisco, Titulo, Agno, IdInterprete) VALUES (49, 'Don''t Stop ''Til You Get Enough', 1979, 35);
INSERT INTO Disco (IdDisco, Titulo, Agno, IdInterprete) VALUES (50, 'Hands Up (Give Me Your Heart)', 1980, 36);
INSERT INTO Disco (IdDisco, Titulo, Agno, IdInterprete) VALUES (51, 'Born to Be Alive', 1979, 37);
INSERT INTO Disco (IdDisco, Titulo, Agno, IdInterprete) VALUES (52, '1999', 1982, 38);
INSERT INTO Disco (IdDisco, Titulo, Agno, IdInterprete) VALUES (53, 'Shortcut To The End (La Carabina de Ambrosio)', 1978, 39);
INSERT INTO Disco (IdDisco, Titulo, Agno, IdInterprete) VALUES (54, 'Body Language', NULL, 40);
INSERT INTO Disco (IdDisco, Titulo, Agno, IdInterprete) VALUES (55, 'Da Ya Think I''m Sexy?', 1978, 41);
INSERT INTO Disco (IdDisco, Titulo, Agno, IdInterprete) VALUES (56, 'Spacer', 1979, 42);
INSERT INTO Disco (IdDisco, Titulo, Agno, IdInterprete) VALUES (57, 'Fly, Robin, Fly', 1975, 43);
INSERT INTO Disco (IdDisco, Titulo, Agno, IdInterprete) VALUES (58, 'Get Up and Boogie', 1976, 43);
INSERT INTO Disco (IdDisco, Titulo, Agno, IdInterprete) VALUES (59, 'You Make Me Feel (Mighty Real)', 1978, 44);
INSERT INTO Disco (IdDisco, Titulo, Agno, IdInterprete) VALUES (60, 'I''m So Excited', 1982, 45);
INSERT INTO Disco (IdDisco, Titulo, Agno, IdInterprete) VALUES (61, 'Savage Lover', 1979, 46);
INSERT INTO Disco (IdDisco, Titulo, Agno, IdInterprete) VALUES (62, 'Miss You', 1978, 47);
INSERT INTO Disco (IdDisco, Titulo, Agno, IdInterprete) VALUES (63, 'Sugar Baby Love', 1974, 48);
INSERT INTO Disco (IdDisco, Titulo, Agno, IdInterprete) VALUES (64, 'Mickey', 1982, 49);
INSERT INTO Disco (IdDisco, Titulo, Agno, IdInterprete) VALUES (65, 'Meu Amigo Charlie Brown', 1975, 50);
INSERT INTO Disco (IdDisco, Titulo, Agno, IdInterprete) VALUES (66, 'Disco Samba', 1978, 50);
INSERT INTO Disco (IdDisco, Titulo, Agno, IdInterprete) VALUES (67, 'Gloria', 1979, 51);
INSERT INTO Disco (IdDisco, Titulo, Agno, IdInterprete) VALUES (68, 'The Hustle', 1975, 52);
INSERT INTO Disco (IdDisco, Titulo, Agno, IdInterprete) VALUES (69, 'Can''t Stop the Music', 1980, 53);
INSERT INTO Disco (IdDisco, Titulo, Agno, IdInterprete) VALUES (70, 'Go West', 1979, 53);
INSERT INTO Disco (IdDisco, Titulo, Agno, IdInterprete) VALUES (71, 'Y.M.C.A.', 1978, 53);
INSERT INTO Disco (IdDisco, Titulo, Agno, IdInterprete) VALUES (72, 'It''s Raining Men', 1982, 54);
INSERT INTO Disco (IdDisco, Titulo, Agno, IdInterprete) VALUES (73, 'Silly Love Songs', 1976, 55);
-- 73 records


--
-- Dumping data for table 'DiscoTipo'
--

INSERT INTO DiscoTipo (Id, IdDisco, IdTipo) VALUES (1, 3, 27);
INSERT INTO DiscoTipo (Id, IdDisco, IdTipo) VALUES (2, 4, 25);
INSERT INTO DiscoTipo (Id, IdDisco, IdTipo) VALUES (3, 11, 25);
INSERT INTO DiscoTipo (Id, IdDisco, IdTipo) VALUES (4, 10, 25);
INSERT INTO DiscoTipo (Id, IdDisco, IdTipo) VALUES (5, 7, 25);
INSERT INTO DiscoTipo (Id, IdDisco, IdTipo) VALUES (6, 8, 25);
INSERT INTO DiscoTipo (Id, IdDisco, IdTipo) VALUES (7, 14, 27);
INSERT INTO DiscoTipo (Id, IdDisco, IdTipo) VALUES (8, 16, 31);
INSERT INTO DiscoTipo (Id, IdDisco, IdTipo) VALUES (9, 17, 25);
INSERT INTO DiscoTipo (Id, IdDisco, IdTipo) VALUES (10, 24, 25);
INSERT INTO DiscoTipo (Id, IdDisco, IdTipo) VALUES (11, 18, 25);
INSERT INTO DiscoTipo (Id, IdDisco, IdTipo) VALUES (12, 19, 25);
INSERT INTO DiscoTipo (Id, IdDisco, IdTipo) VALUES (13, 21, 25);
INSERT INTO DiscoTipo (Id, IdDisco, IdTipo) VALUES (14, 23, 25);
INSERT INTO DiscoTipo (Id, IdDisco, IdTipo) VALUES (15, 26, 25);
INSERT INTO DiscoTipo (Id, IdDisco, IdTipo) VALUES (16, 27, 30);
INSERT INTO DiscoTipo (Id, IdDisco, IdTipo) VALUES (17, 28, 25);
INSERT INTO DiscoTipo (Id, IdDisco, IdTipo) VALUES (18, 29, 30);
INSERT INTO DiscoTipo (Id, IdDisco, IdTipo) VALUES (19, 32, 25);
INSERT INTO DiscoTipo (Id, IdDisco, IdTipo) VALUES (20, 33, 30);
INSERT INTO DiscoTipo (Id, IdDisco, IdTipo) VALUES (21, 36, 25);
INSERT INTO DiscoTipo (Id, IdDisco, IdTipo) VALUES (22, 37, 25);
INSERT INTO DiscoTipo (Id, IdDisco, IdTipo) VALUES (23, 41, 25);
INSERT INTO DiscoTipo (Id, IdDisco, IdTipo) VALUES (24, 43, 25);
INSERT INTO DiscoTipo (Id, IdDisco, IdTipo) VALUES (25, 44, 30);
INSERT INTO DiscoTipo (Id, IdDisco, IdTipo) VALUES (26, 45, 25);
INSERT INTO DiscoTipo (Id, IdDisco, IdTipo) VALUES (27, 46, 25);
INSERT INTO DiscoTipo (Id, IdDisco, IdTipo) VALUES (28, 49, 25);
INSERT INTO DiscoTipo (Id, IdDisco, IdTipo) VALUES (29, 47, 25);
INSERT INTO DiscoTipo (Id, IdDisco, IdTipo) VALUES (30, 53, 25);
INSERT INTO DiscoTipo (Id, IdDisco, IdTipo) VALUES (31, 54, 25);
INSERT INTO DiscoTipo (Id, IdDisco, IdTipo) VALUES (32, 56, 25);
INSERT INTO DiscoTipo (Id, IdDisco, IdTipo) VALUES (33, 57, 25);
INSERT INTO DiscoTipo (Id, IdDisco, IdTipo) VALUES (34, 58, 25);
INSERT INTO DiscoTipo (Id, IdDisco, IdTipo) VALUES (35, 59, 25);
INSERT INTO DiscoTipo (Id, IdDisco, IdTipo) VALUES (36, 61, 25);
INSERT INTO DiscoTipo (Id, IdDisco, IdTipo) VALUES (37, 66, 26);
INSERT INTO DiscoTipo (Id, IdDisco, IdTipo) VALUES (38, 65, 31);
INSERT INTO DiscoTipo (Id, IdDisco, IdTipo) VALUES (39, 68, 25);
INSERT INTO DiscoTipo (Id, IdDisco, IdTipo) VALUES (40, 69, 25);
INSERT INTO DiscoTipo (Id, IdDisco, IdTipo) VALUES (41, 70, 25);
INSERT INTO DiscoTipo (Id, IdDisco, IdTipo) VALUES (42, 71, 25);
INSERT INTO DiscoTipo (Id, IdDisco, IdTipo) VALUES (43, 72, 25);
INSERT INTO DiscoTipo (Id, IdDisco, IdTipo) VALUES (44, 73, 25);
INSERT INTO DiscoTipo (Id, IdDisco, IdTipo) VALUES (45, 2, 25);
INSERT INTO DiscoTipo (Id, IdDisco, IdTipo) VALUES (46, 5, 32);
INSERT INTO DiscoTipo (Id, IdDisco, IdTipo) VALUES (47, 6, 25);
INSERT INTO DiscoTipo (Id, IdDisco, IdTipo) VALUES (48, 9, 25);
INSERT INTO DiscoTipo (Id, IdDisco, IdTipo) VALUES (49, 12, 25);
INSERT INTO DiscoTipo (Id, IdDisco, IdTipo) VALUES (50, 20, 25);
INSERT INTO DiscoTipo (Id, IdDisco, IdTipo) VALUES (51, 22, 25);
INSERT INTO DiscoTipo (Id, IdDisco, IdTipo) VALUES (52, 34, 25);
INSERT INTO DiscoTipo (Id, IdDisco, IdTipo) VALUES (53, 35, 29);
INSERT INTO DiscoTipo (Id, IdDisco, IdTipo) VALUES (54, 38, 25);
INSERT INTO DiscoTipo (Id, IdDisco, IdTipo) VALUES (55, 67, 25);
INSERT INTO DiscoTipo (Id, IdDisco, IdTipo) VALUES (56, 39, 25);
INSERT INTO DiscoTipo (Id, IdDisco, IdTipo) VALUES (57, 40, 25);
INSERT INTO DiscoTipo (Id, IdDisco, IdTipo) VALUES (58, 42, 25);
INSERT INTO DiscoTipo (Id, IdDisco, IdTipo) VALUES (59, 50, 25);
INSERT INTO DiscoTipo (Id, IdDisco, IdTipo) VALUES (60, 51, 25);
INSERT INTO DiscoTipo (Id, IdDisco, IdTipo) VALUES (61, 55, 25);
INSERT INTO DiscoTipo (Id, IdDisco, IdTipo) VALUES (62, 62, 33);
INSERT INTO DiscoTipo (Id, IdDisco, IdTipo) VALUES (63, 63, 25);
INSERT INTO DiscoTipo (Id, IdDisco, IdTipo) VALUES (64, 64, 25);
INSERT INTO DiscoTipo (Id, IdDisco, IdTipo) VALUES (65, 2, 17);
INSERT INTO DiscoTipo (Id, IdDisco, IdTipo) VALUES (66, 5, 4);
INSERT INTO DiscoTipo (Id, IdDisco, IdTipo) VALUES (67, 6, 10);
INSERT INTO DiscoTipo (Id, IdDisco, IdTipo) VALUES (68, 9, 19);
INSERT INTO DiscoTipo (Id, IdDisco, IdTipo) VALUES (69, 12, 8);
INSERT INTO DiscoTipo (Id, IdDisco, IdTipo) VALUES (70, 20, 8);
INSERT INTO DiscoTipo (Id, IdDisco, IdTipo) VALUES (71, 22, 20);
INSERT INTO DiscoTipo (Id, IdDisco, IdTipo) VALUES (72, 34, 1);
INSERT INTO DiscoTipo (Id, IdDisco, IdTipo) VALUES (73, 35, 4);
INSERT INTO DiscoTipo (Id, IdDisco, IdTipo) VALUES (74, 38, 13);
INSERT INTO DiscoTipo (Id, IdDisco, IdTipo) VALUES (75, 67, 13);
INSERT INTO DiscoTipo (Id, IdDisco, IdTipo) VALUES (76, 39, 24);
INSERT INTO DiscoTipo (Id, IdDisco, IdTipo) VALUES (77, 40, 9);
INSERT INTO DiscoTipo (Id, IdDisco, IdTipo) VALUES (78, 42, 7);
INSERT INTO DiscoTipo (Id, IdDisco, IdTipo) VALUES (79, 50, 13);
INSERT INTO DiscoTipo (Id, IdDisco, IdTipo) VALUES (80, 51, 14);
INSERT INTO DiscoTipo (Id, IdDisco, IdTipo) VALUES (81, 55, 14);
INSERT INTO DiscoTipo (Id, IdDisco, IdTipo) VALUES (82, 62, 4);
INSERT INTO DiscoTipo (Id, IdDisco, IdTipo) VALUES (83, 63, 14);
INSERT INTO DiscoTipo (Id, IdDisco, IdTipo) VALUES (84, 64, 19);
INSERT INTO DiscoTipo (Id, IdDisco, IdTipo) VALUES (85, 13, 25);
INSERT INTO DiscoTipo (Id, IdDisco, IdTipo) VALUES (86, 15, 34);
INSERT INTO DiscoTipo (Id, IdDisco, IdTipo) VALUES (87, 17, 25);
INSERT INTO DiscoTipo (Id, IdDisco, IdTipo) VALUES (88, 24, 25);
INSERT INTO DiscoTipo (Id, IdDisco, IdTipo) VALUES (89, 25, 25);
INSERT INTO DiscoTipo (Id, IdDisco, IdTipo) VALUES (90, 31, 27);
INSERT INTO DiscoTipo (Id, IdDisco, IdTipo) VALUES (91, 52, 28);
INSERT INTO DiscoTipo (Id, IdDisco, IdTipo) VALUES (92, 60, 35);
INSERT INTO DiscoTipo (Id, IdDisco, IdTipo) VALUES (93, 38, 27);
INSERT INTO DiscoTipo (Id, IdDisco, IdTipo) VALUES (94, 67, 27);
INSERT INTO DiscoTipo (Id, IdDisco, IdTipo) VALUES (95, 13, 12);
INSERT INTO DiscoTipo (Id, IdDisco, IdTipo) VALUES (96, 15, 5);
INSERT INTO DiscoTipo (Id, IdDisco, IdTipo) VALUES (97, 17, 17);
INSERT INTO DiscoTipo (Id, IdDisco, IdTipo) VALUES (98, 24, 17);
INSERT INTO DiscoTipo (Id, IdDisco, IdTipo) VALUES (99, 25, 17);
INSERT INTO DiscoTipo (Id, IdDisco, IdTipo) VALUES (100, 31, 23);
INSERT INTO DiscoTipo (Id, IdDisco, IdTipo) VALUES (101, 52, 13);
INSERT INTO DiscoTipo (Id, IdDisco, IdTipo) VALUES (102, 60, 2);
INSERT INTO DiscoTipo (Id, IdDisco, IdTipo) VALUES (103, 38, 11);
INSERT INTO DiscoTipo (Id, IdDisco, IdTipo) VALUES (104, 67, 11);
INSERT INTO DiscoTipo (Id, IdDisco, IdTipo) VALUES (105, 13, 3);
INSERT INTO DiscoTipo (Id, IdDisco, IdTipo) VALUES (106, 15, 18);
INSERT INTO DiscoTipo (Id, IdDisco, IdTipo) VALUES (107, 17, 21);
INSERT INTO DiscoTipo (Id, IdDisco, IdTipo) VALUES (108, 24, 21);
INSERT INTO DiscoTipo (Id, IdDisco, IdTipo) VALUES (109, 25, 21);
INSERT INTO DiscoTipo (Id, IdDisco, IdTipo) VALUES (110, 31, 22);
INSERT INTO DiscoTipo (Id, IdDisco, IdTipo) VALUES (111, 52, 12);
INSERT INTO DiscoTipo (Id, IdDisco, IdTipo) VALUES (112, 60, 17);
INSERT INTO DiscoTipo (Id, IdDisco, IdTipo) VALUES (113, 38, 13);
INSERT INTO DiscoTipo (Id, IdDisco, IdTipo) VALUES (114, 67, 13);
INSERT INTO DiscoTipo (Id, IdDisco, IdTipo) VALUES (115, 1, 25);
INSERT INTO DiscoTipo (Id, IdDisco, IdTipo) VALUES (116, 30, 25);
INSERT INTO DiscoTipo (Id, IdDisco, IdTipo) VALUES (117, 1, 13);
INSERT INTO DiscoTipo (Id, IdDisco, IdTipo) VALUES (118, 30, 13);
INSERT INTO DiscoTipo (Id, IdDisco, IdTipo) VALUES (119, 1, 6);
INSERT INTO DiscoTipo (Id, IdDisco, IdTipo) VALUES (120, 30, 19);
INSERT INTO DiscoTipo (Id, IdDisco, IdTipo) VALUES (121, 1, 15);
INSERT INTO DiscoTipo (Id, IdDisco, IdTipo) VALUES (122, 30, 22);
INSERT INTO DiscoTipo (Id, IdDisco, IdTipo) VALUES (123, 48, 31);
INSERT INTO DiscoTipo (Id, IdDisco, IdTipo) VALUES (124, 48, 17);
INSERT INTO DiscoTipo (Id, IdDisco, IdTipo) VALUES (125, 48, 16);
INSERT INTO DiscoTipo (Id, IdDisco, IdTipo) VALUES (126, 48, 19);
INSERT INTO DiscoTipo (Id, IdDisco, IdTipo) VALUES (127, 48, 7);
-- 127 records


--
-- Dumping data for table 'Interprete'
--

INSERT INTO Interprete (Interprete, IdInterprete) VALUES ('ABBA', 1);
INSERT INTO Interprete (Interprete, IdInterprete) VALUES ('Anita Ward', 2);
INSERT INTO Interprete (Interprete, IdInterprete) VALUES ('Baccara', 3);
INSERT INTO Interprete (Interprete, IdInterprete) VALUES ('Barry Manilow', 4);
INSERT INTO Interprete (Interprete, IdInterprete) VALUES ('Barry White', 5);
INSERT INTO Interprete (Interprete, IdInterprete) VALUES ('Barry White; Love Unlimited Orchestra', 6);
INSERT INTO Interprete (Interprete, IdInterprete) VALUES ('Bee Gees', 7);
INSERT INTO Interprete (Interprete, IdInterprete) VALUES ('Blondie', 8);
INSERT INTO Interprete (Interprete, IdInterprete) VALUES ('Boney M.', 9);
INSERT INTO Interprete (Interprete, IdInterprete) VALUES ('Boy Town Gang', 10);
INSERT INTO Interprete (Interprete, IdInterprete) VALUES ('Chaka Khan', 11);
INSERT INTO Interprete (Interprete, IdInterprete) VALUES ('Donna Summer', 12);
INSERT INTO Interprete (Interprete, IdInterprete) VALUES ('Donna Summer; Barbra Streisand', 13);
INSERT INTO Interprete (Interprete, IdInterprete) VALUES ('Electric Light Orchestra', 14);
INSERT INTO Interprete (Interprete, IdInterprete) VALUES ('Four Seasons', 15);
INSERT INTO Interprete (Interprete, IdInterprete) VALUES ('Gloria Gaynor', 16);
INSERT INTO Interprete (Interprete, IdInterprete) VALUES ('Harold Melvin & the Blue Notes', 17);
INSERT INTO Interprete (Interprete, IdInterprete) VALUES ('Heatwave', 18);
INSERT INTO Interprete (Interprete, IdInterprete) VALUES ('Hues Corporation', 19);
INSERT INTO Interprete (Interprete, IdInterprete) VALUES ('Irene Cara', 20);
INSERT INTO Interprete (Interprete, IdInterprete) VALUES ('Jackson 5', 21);
INSERT INTO Interprete (Interprete, IdInterprete) VALUES ('Jerry Butler', 22);
INSERT INTO Interprete (Interprete, IdInterprete) VALUES ('John Paul Young', 23);
INSERT INTO Interprete (Interprete, IdInterprete) VALUES ('Kiss', 24);
INSERT INTO Interprete (Interprete, IdInterprete) VALUES ('Kool & the Gang', 25);
INSERT INTO Interprete (Interprete, IdInterprete) VALUES ('LaBelle', 26);
INSERT INTO Interprete (Interprete, IdInterprete) VALUES ('Laura Branigan', 27);
INSERT INTO Interprete (Interprete, IdInterprete) VALUES ('Leo Sayer', 28);
INSERT INTO Interprete (Interprete, IdInterprete) VALUES ('Lime', 29);
INSERT INTO Interprete (Interprete, IdInterprete) VALUES ('Lipps Inc.', 30);
INSERT INTO Interprete (Interprete, IdInterprete) VALUES ('Madonna', 31);
INSERT INTO Interprete (Interprete, IdInterprete) VALUES ('Manu Dibango', 32);
INSERT INTO Interprete (Interprete, IdInterprete) VALUES ('Marvin Gaye', 33);
INSERT INTO Interprete (Interprete, IdInterprete) VALUES ('Mary Jane Girls', 34);
INSERT INTO Interprete (Interprete, IdInterprete) VALUES ('Michael Jackson', 35);
INSERT INTO Interprete (Interprete, IdInterprete) VALUES ('Ottawan', 36);
INSERT INTO Interprete (Interprete, IdInterprete) VALUES ('Patrick Hernandez', 37);
INSERT INTO Interprete (Interprete, IdInterprete) VALUES ('Prince', 38);
INSERT INTO Interprete (Interprete, IdInterprete) VALUES ('Quartz', 39);
INSERT INTO Interprete (Interprete, IdInterprete) VALUES ('Queen', 40);
INSERT INTO Interprete (Interprete, IdInterprete) VALUES ('Rod Stewart', 41);
INSERT INTO Interprete (Interprete, IdInterprete) VALUES ('Sheila & B.Devotion', 42);
INSERT INTO Interprete (Interprete, IdInterprete) VALUES ('Silver Convention', 43);
INSERT INTO Interprete (Interprete, IdInterprete) VALUES ('Sylvester', 44);
INSERT INTO Interprete (Interprete, IdInterprete) VALUES ('The Pointer Sisters', 45);
INSERT INTO Interprete (Interprete, IdInterprete) VALUES ('The Ring', 46);
INSERT INTO Interprete (Interprete, IdInterprete) VALUES ('The Rolling Stones', 47);
INSERT INTO Interprete (Interprete, IdInterprete) VALUES ('The Rubettes', 48);
INSERT INTO Interprete (Interprete, IdInterprete) VALUES ('Toni Basil', 49);
INSERT INTO Interprete (Interprete, IdInterprete) VALUES ('Two Man Sound', 50);
INSERT INTO Interprete (Interprete, IdInterprete) VALUES ('Umberto Tozzi', 51);
INSERT INTO Interprete (Interprete, IdInterprete) VALUES ('Van McCoy', 52);
INSERT INTO Interprete (Interprete, IdInterprete) VALUES ('Village People', 53);
INSERT INTO Interprete (Interprete, IdInterprete) VALUES ('Weather Girls', 54);
INSERT INTO Interprete (Interprete, IdInterprete) VALUES ('Wings', 55);
-- 55 records

--
-- Dumping data for table 'Puntuacion'
--

INSERT INTO Puntuacion (Id, Idcliente, iddisco, Puntuacion, Fecha) VALUES (1, 2, 71, 9, '2013-06-05 00:00:00');
INSERT INTO Puntuacion (Id, Idcliente, iddisco, Puntuacion, Fecha) VALUES (2, 5, 32, 4, '2013-04-16 00:00:00');
INSERT INTO Puntuacion (Id, Idcliente, iddisco, Puntuacion, Fecha) VALUES (3, 6, 12, 7, '2013-02-12 00:00:00');
INSERT INTO Puntuacion (Id, Idcliente, iddisco, Puntuacion, Fecha) VALUES (4, 17, 73, 6, '2013-06-14 00:00:00');
INSERT INTO Puntuacion (Id, Idcliente, iddisco, Puntuacion, Fecha) VALUES (5, 25, 12, 1, '2013-03-01 00:00:00');
INSERT INTO Puntuacion (Id, Idcliente, iddisco, Puntuacion, Fecha) VALUES (6, 86, 41, 6, '2013-01-21 00:00:00');
INSERT INTO Puntuacion (Id, Idcliente, iddisco, Puntuacion, Fecha) VALUES (7, 43, 12, 9, '2013-06-20 00:00:00');
INSERT INTO Puntuacion (Id, Idcliente, iddisco, Puntuacion, Fecha) VALUES (8, 66, 34, 6, '2013-05-03 00:00:00');
INSERT INTO Puntuacion (Id, Idcliente, iddisco, Puntuacion, Fecha) VALUES (9, 78, 64, 1, '2013-05-02 00:00:00');
INSERT INTO Puntuacion (Id, Idcliente, iddisco, Puntuacion, Fecha) VALUES (10, 21, 63, 3, '2013-05-21 00:00:00');
INSERT INTO Puntuacion (Id, Idcliente, iddisco, Puntuacion, Fecha) VALUES (11, 11, 12, 3, '2013-02-14 00:00:00');
INSERT INTO Puntuacion (Id, Idcliente, iddisco, Puntuacion, Fecha) VALUES (12, 20, 4, 9, '2013-04-16 00:00:00');
INSERT INTO Puntuacion (Id, Idcliente, iddisco, Puntuacion, Fecha) VALUES (13, 41, 8, 10, '2013-06-10 00:00:00');
INSERT INTO Puntuacion (Id, Idcliente, iddisco, Puntuacion, Fecha) VALUES (14, 12, 12, 3, '2013-06-01 00:00:00');
INSERT INTO Puntuacion (Id, Idcliente, iddisco, Puntuacion, Fecha) VALUES (15, 43, 42, 7, '2013-04-16 00:00:00');
INSERT INTO Puntuacion (Id, Idcliente, iddisco, Puntuacion, Fecha) VALUES (16, 89, 13, 8, '2013-02-06 00:00:00');
INSERT INTO Puntuacion (Id, Idcliente, iddisco, Puntuacion, Fecha) VALUES (17, 32, 8, 5, '2013-05-06 00:00:00');
INSERT INTO Puntuacion (Id, Idcliente, iddisco, Puntuacion, Fecha) VALUES (18, 12, 30, 7, '2013-03-01 00:00:00');
INSERT INTO Puntuacion (Id, Idcliente, iddisco, Puntuacion, Fecha) VALUES (19, 57, 52, 9, '2013-06-11 00:00:00');
INSERT INTO Puntuacion (Id, Idcliente, iddisco, Puntuacion, Fecha) VALUES (20, 39, 57, 3, '2013-05-13 00:00:00');
INSERT INTO Puntuacion (Id, Idcliente, iddisco, Puntuacion, Fecha) VALUES (21, 22, 59, 5, '2013-02-13 00:00:00');
INSERT INTO Puntuacion (Id, Idcliente, iddisco, Puntuacion, Fecha) VALUES (22, 78, 37, 5, '2013-06-02 00:00:00');
INSERT INTO Puntuacion (Id, Idcliente, iddisco, Puntuacion, Fecha) VALUES (23, 16, 8, 6, '2013-01-12 00:00:00');
INSERT INTO Puntuacion (Id, Idcliente, iddisco, Puntuacion, Fecha) VALUES (24, 82, 12, 1, '2013-03-19 00:00:00');
INSERT INTO Puntuacion (Id, Idcliente, iddisco, Puntuacion, Fecha) VALUES (25, 15, 41, 4, '2013-06-05 00:00:00');
INSERT INTO Puntuacion (Id, Idcliente, iddisco, Puntuacion, Fecha) VALUES (26, 100, 12, 6, '2013-02-28 00:00:00');
INSERT INTO Puntuacion (Id, Idcliente, iddisco, Puntuacion, Fecha) VALUES (27, 12, 52, 7, '2013-06-05 00:00:00');
INSERT INTO Puntuacion (Id, Idcliente, iddisco, Puntuacion, Fecha) VALUES (28, 35, 62, 8, '2013-03-07 00:00:00');
INSERT INTO Puntuacion (Id, Idcliente, iddisco, Puntuacion, Fecha) VALUES (29, 81, 62, 3, '2013-05-27 00:00:00');
INSERT INTO Puntuacion (Id, Idcliente, iddisco, Puntuacion, Fecha) VALUES (30, 13, 46, 6, '2013-01-23 00:00:00');
INSERT INTO Puntuacion (Id, Idcliente, iddisco, Puntuacion, Fecha) VALUES (31, 93, 12, 7, '2013-02-14 00:00:00');
INSERT INTO Puntuacion (Id, Idcliente, iddisco, Puntuacion, Fecha) VALUES (32, 51, 71, 4, '2013-04-02 00:00:00');
INSERT INTO Puntuacion (Id, Idcliente, iddisco, Puntuacion, Fecha) VALUES (33, 1, 43, 7, '2013-06-04 00:00:00');
INSERT INTO Puntuacion (Id, Idcliente, iddisco, Puntuacion, Fecha) VALUES (34, 56, 46, 10, '2013-04-16 00:00:00');
INSERT INTO Puntuacion (Id, Idcliente, iddisco, Puntuacion, Fecha) VALUES (35, 25, 71, 10, '2013-06-04 00:00:00');
INSERT INTO Puntuacion (Id, Idcliente, iddisco, Puntuacion, Fecha) VALUES (36, 4, 23, 4, '2013-02-15 00:00:00');
INSERT INTO Puntuacion (Id, Idcliente, iddisco, Puntuacion, Fecha) VALUES (37, 9, 46, 9, '2013-01-06 00:00:00');
INSERT INTO Puntuacion (Id, Idcliente, iddisco, Puntuacion, Fecha) VALUES (38, 24, 12, 6, '2013-04-09 00:00:00');
INSERT INTO Puntuacion (Id, Idcliente, iddisco, Puntuacion, Fecha) VALUES (39, 55, 35, 4, '2013-04-29 00:00:00');
INSERT INTO Puntuacion (Id, Idcliente, iddisco, Puntuacion, Fecha) VALUES (40, 6, 72, 2, '2013-05-31 00:00:00');
INSERT INTO Puntuacion (Id, Idcliente, iddisco, Puntuacion, Fecha) VALUES (41, 15, 52, 6, '2013-04-15 00:00:00');
INSERT INTO Puntuacion (Id, Idcliente, iddisco, Puntuacion, Fecha) VALUES (42, 86, 63, 7, '2013-03-15 00:00:00');
INSERT INTO Puntuacion (Id, Idcliente, iddisco, Puntuacion, Fecha) VALUES (43, 56, 70, 5, '2013-03-12 00:00:00');
INSERT INTO Puntuacion (Id, Idcliente, iddisco, Puntuacion, Fecha) VALUES (44, 12, 20, 4, '2013-06-10 00:00:00');
INSERT INTO Puntuacion (Id, Idcliente, iddisco, Puntuacion, Fecha) VALUES (45, 56, 1, 3, '2013-04-29 00:00:00');
INSERT INTO Puntuacion (Id, Idcliente, iddisco, Puntuacion, Fecha) VALUES (46, 71, 7, 9, '2013-02-19 00:00:00');
INSERT INTO Puntuacion (Id, Idcliente, iddisco, Puntuacion, Fecha) VALUES (47, 12, 23, 10, '2013-04-11 00:00:00');
INSERT INTO Puntuacion (Id, Idcliente, iddisco, Puntuacion, Fecha) VALUES (48, 84, 51, 1, '2013-04-11 00:00:00');
INSERT INTO Puntuacion (Id, Idcliente, iddisco, Puntuacion, Fecha) VALUES (49, 24, 12, 2, '2013-05-28 00:00:00');
INSERT INTO Puntuacion (Id, Idcliente, iddisco, Puntuacion, Fecha) VALUES (50, 23, 46, 10, '2013-03-11 00:00:00');
INSERT INTO Puntuacion (Id, Idcliente, iddisco, Puntuacion, Fecha) VALUES (51, 52, 73, 5, '2013-05-15 00:00:00');
INSERT INTO Puntuacion (Id, Idcliente, iddisco, Puntuacion, Fecha) VALUES (52, 63, 23, 7, '2013-04-30 00:00:00');
INSERT INTO Puntuacion (Id, Idcliente, iddisco, Puntuacion, Fecha) VALUES (53, 68, 61, 2, '2013-05-29 00:00:00');
INSERT INTO Puntuacion (Id, Idcliente, iddisco, Puntuacion, Fecha) VALUES (54, 13, 1, 5, '2013-04-12 00:00:00');
INSERT INTO Puntuacion (Id, Idcliente, iddisco, Puntuacion, Fecha) VALUES (55, 3, 54, 1, '2013-06-18 00:00:00');
INSERT INTO Puntuacion (Id, Idcliente, iddisco, Puntuacion, Fecha) VALUES (56, 7, 3, 6, '2013-02-19 00:00:00');
INSERT INTO Puntuacion (Id, Idcliente, iddisco, Puntuacion, Fecha) VALUES (57, 12, 71, 1, '2013-01-21 00:00:00');
INSERT INTO Puntuacion (Id, Idcliente, iddisco, Puntuacion, Fecha) VALUES (58, 76, 24, 1, '2013-06-07 00:00:00');
INSERT INTO Puntuacion (Id, Idcliente, iddisco, Puntuacion, Fecha) VALUES (59, 36, 69, 4, '2013-06-17 00:00:00');
INSERT INTO Puntuacion (Id, Idcliente, iddisco, Puntuacion, Fecha) VALUES (60, 93, 32, 6, '2013-03-08 00:00:00');
INSERT INTO Puntuacion (Id, Idcliente, iddisco, Puntuacion, Fecha) VALUES (61, 12, 4, 10, '2013-02-20 00:00:00');
INSERT INTO Puntuacion (Id, Idcliente, iddisco, Puntuacion, Fecha) VALUES (62, 57, 72, 10, '2013-03-05 00:00:00');
INSERT INTO Puntuacion (Id, Idcliente, iddisco, Puntuacion, Fecha) VALUES (63, 86, 13, 9, '2013-04-15 00:00:00');
INSERT INTO Puntuacion (Id, Idcliente, iddisco, Puntuacion, Fecha) VALUES (64, 43, 43, 7, '2013-05-28 00:00:00');
INSERT INTO Puntuacion (Id, Idcliente, iddisco, Puntuacion, Fecha) VALUES (65, 12, 63, 4, '2013-05-27 00:00:00');
INSERT INTO Puntuacion (Id, Idcliente, iddisco, Puntuacion, Fecha) VALUES (66, 56, 23, 8, '2013-04-02 00:00:00');
INSERT INTO Puntuacion (Id, Idcliente, iddisco, Puntuacion, Fecha) VALUES (67, 92, 56, 3, '2013-06-04 00:00:00');
INSERT INTO Puntuacion (Id, Idcliente, iddisco, Puntuacion, Fecha) VALUES (68, 1, 71, 2, '2013-02-12 00:00:00');
INSERT INTO Puntuacion (Id, Idcliente, iddisco, Puntuacion, Fecha) VALUES (69, 3, 23, 7, '2013-02-19 00:00:00');
INSERT INTO Puntuacion (Id, Idcliente, iddisco, Puntuacion, Fecha) VALUES (70, 5, 56, 9, '2013-01-03 00:00:00');
INSERT INTO Puntuacion (Id, Idcliente, iddisco, Puntuacion, Fecha) VALUES (71, 10, 36, 1, '2013-02-12 00:00:00');
INSERT INTO Puntuacion (Id, Idcliente, iddisco, Puntuacion, Fecha) VALUES (72, 4, 8, 10, '2013-06-10 00:00:00');
INSERT INTO Puntuacion (Id, Idcliente, iddisco, Puntuacion, Fecha) VALUES (73, 7, 12, 3, '2013-04-10 00:00:00');
INSERT INTO Puntuacion (Id, Idcliente, iddisco, Puntuacion, Fecha) VALUES (74, 12, 43, 6, '2013-03-10 00:00:00');
INSERT INTO Puntuacion (Id, Idcliente, iddisco, Puntuacion, Fecha) VALUES (75, 84, 63, 8, '2013-05-10 00:00:00');
INSERT INTO Puntuacion (Id, Idcliente, iddisco, Puntuacion, Fecha) VALUES (76, 23, 12, 10, '2013-06-10 00:00:00');
INSERT INTO Puntuacion (Id, Idcliente, iddisco, Puntuacion, Fecha) VALUES (77, 52, 72, 2, '2013-06-04 00:00:00');
INSERT INTO Puntuacion (Id, Idcliente, iddisco, Puntuacion, Fecha) VALUES (78, 51, 14, 4, '2013-04-09 00:00:00');
INSERT INTO Puntuacion (Id, Idcliente, iddisco, Puntuacion, Fecha) VALUES (79, 57, 63, 5, '2013-04-25 00:00:00');
INSERT INTO Puntuacion (Id, Idcliente, iddisco, Puntuacion, Fecha) VALUES (80, 65, 21, 5, '2013-05-03 00:00:00');
INSERT INTO Puntuacion (Id, Idcliente, iddisco, Puntuacion, Fecha) VALUES (81, 2, 45, 10, '2013-03-19 00:00:00');
INSERT INTO Puntuacion (Id, Idcliente, iddisco, Puntuacion, Fecha) VALUES (82, 45, 10, 3, '2013-05-16 00:00:00');
INSERT INTO Puntuacion (Id, Idcliente, iddisco, Puntuacion, Fecha) VALUES (83, 62, 40, 9, '2013-06-04 00:00:00');
INSERT INTO Puntuacion (Id, Idcliente, iddisco, Puntuacion, Fecha) VALUES (84, 15, 29, 8, '2013-03-04 00:00:00');
INSERT INTO Puntuacion (Id, Idcliente, iddisco, Puntuacion, Fecha) VALUES (85, 84, 19, 4, '2013-01-10 00:00:00');
INSERT INTO Puntuacion (Id, Idcliente, iddisco, Puntuacion, Fecha) VALUES (86, 45, 47, 3, '2013-02-23 00:00:00');
INSERT INTO Puntuacion (Id, Idcliente, iddisco, Puntuacion, Fecha) VALUES (87, 72, 6, 3, '2013-02-09 00:00:00');
INSERT INTO Puntuacion (Id, Idcliente, iddisco, Puntuacion, Fecha) VALUES (88, 15, 9, 2, '2013-03-18 00:00:00');
INSERT INTO Puntuacion (Id, Idcliente, iddisco, Puntuacion, Fecha) VALUES (89, 94, 21, 1, '2013-03-13 00:00:00');
INSERT INTO Puntuacion (Id, Idcliente, iddisco, Puntuacion, Fecha) VALUES (90, 17, 56, 8, '2013-06-14 00:00:00');
INSERT INTO Puntuacion (Id, Idcliente, iddisco, Puntuacion, Fecha) VALUES (91, 25, 32, 4, '2013-02-26 00:00:00');
INSERT INTO Puntuacion (Id, Idcliente, iddisco, Puntuacion, Fecha) VALUES (92, 7, 16, 3, '2013-04-08 00:00:00');
INSERT INTO Puntuacion (Id, Idcliente, iddisco, Puntuacion, Fecha) VALUES (93, 29, 8, 1, '2013-01-30 00:00:00');
INSERT INTO Puntuacion (Id, Idcliente, iddisco, Puntuacion, Fecha) VALUES (94, 21, 1, 8, '2013-01-31 00:00:00');
INSERT INTO Puntuacion (Id, Idcliente, iddisco, Puntuacion, Fecha) VALUES (95, 87, 70, 10, '2013-06-04 00:00:00');
INSERT INTO Puntuacion (Id, Idcliente, iddisco, Puntuacion, Fecha) VALUES (96, 12, 30, 10, '2013-02-25 00:00:00');
INSERT INTO Puntuacion (Id, Idcliente, iddisco, Puntuacion, Fecha) VALUES (97, 65, 38, 9, '2013-02-19 00:00:00');
INSERT INTO Puntuacion (Id, Idcliente, iddisco, Puntuacion, Fecha) VALUES (98, 82, 37, 9, '2013-02-11 00:00:00');
INSERT INTO Puntuacion (Id, Idcliente, iddisco, Puntuacion, Fecha) VALUES (99, 56, 2, 4, '2013-06-01 00:00:00');
INSERT INTO Puntuacion (Id, Idcliente, iddisco, Puntuacion, Fecha) VALUES (100, 27, 10, 1, '2013-06-08 00:00:00');
-- 100 records


--
-- Dumping data for table 'Tipo'
--

INSERT INTO Tipo (IdTipo, tipo) VALUES (1, ' Dance');
INSERT INTO Tipo (IdTipo, tipo) VALUES (2, ' Dance pop');
INSERT INTO Tipo (IdTipo, tipo) VALUES (3, ' Dance punk');
INSERT INTO Tipo (IdTipo, tipo) VALUES (4, ' Disco');
INSERT INTO Tipo (IdTipo, tipo) VALUES (5, ' Euro disco');
INSERT INTO Tipo (IdTipo, tipo) VALUES (6, ' Europop');
INSERT INTO Tipo (IdTipo, tipo) VALUES (7, ' Funk');
INSERT INTO Tipo (IdTipo, tipo) VALUES (8, ' Funk rock');
INSERT INTO Tipo (IdTipo, tipo) VALUES (9, ' Hi-NRG');
INSERT INTO Tipo (IdTipo, tipo) VALUES (10, ' Instrumental Easy Listening');
INSERT INTO Tipo (IdTipo, tipo) VALUES (11, ' Italo disco');
INSERT INTO Tipo (IdTipo, tipo) VALUES (12, ' New wave');
INSERT INTO Tipo (IdTipo, tipo) VALUES (13, ' Pop');
INSERT INTO Tipo (IdTipo, tipo) VALUES (14, ' Pop rock');
INSERT INTO Tipo (IdTipo, tipo) VALUES (15, ' Pop sueco');
INSERT INTO Tipo (IdTipo, tipo) VALUES (16, ' Post-disco');
INSERT INTO Tipo (IdTipo, tipo) VALUES (17, ' R&B');
INSERT INTO Tipo (IdTipo, tipo) VALUES (18, ' Reggae');
INSERT INTO Tipo (IdTipo, tipo) VALUES (19, ' Rock');
INSERT INTO Tipo (IdTipo, tipo) VALUES (20, ' Rock sinf�nico');
INSERT INTO Tipo (IdTipo, tipo) VALUES (21, ' Soul');
INSERT INTO Tipo (IdTipo, tipo) VALUES (22, ' Soundtrack');
INSERT INTO Tipo (IdTipo, tipo) VALUES (23, ' Synthpop');
INSERT INTO Tipo (IdTipo, tipo) VALUES (24, ' Vocal');
INSERT INTO Tipo (IdTipo, tipo) VALUES (25, 'Disco');
INSERT INTO Tipo (IdTipo, tipo) VALUES (26, 'Disco samba');
INSERT INTO Tipo (IdTipo, tipo) VALUES (27, 'Euro disco');
INSERT INTO Tipo (IdTipo, tipo) VALUES (28, 'Funk');
INSERT INTO Tipo (IdTipo, tipo) VALUES (29, 'Hard rock');
INSERT INTO Tipo (IdTipo, tipo) VALUES (30, 'Oldies');
INSERT INTO Tipo (IdTipo, tipo) VALUES (31, 'Pop');
INSERT INTO Tipo (IdTipo, tipo) VALUES (32, 'R&B');
INSERT INTO Tipo (IdTipo, tipo) VALUES (33, 'Rock');
INSERT INTO Tipo (IdTipo, tipo) VALUES (34, 'Rocksteady');
INSERT INTO Tipo (IdTipo, tipo) VALUES (35, 'Soul');
-- 35 records



alter table puntuacion
add constraint FK_puntuacioncliente
foreign key (idcliente)
references cliente (id);


alter table puntuacion
add constraint FK_puntuaciondisco
foreign key (iddisco)
references disco (iddisco);


alter table disco
add constraint FK_discointerprete
foreign key (idinterprete)
references interprete (idinterprete);


alter table discotipo
add constraint FK_discotipodisco
foreign key (iddisco)
references disco (iddisco);


alter table discotipo
add constraint FK_discotipotipo
foreign key (idtipo)
references tipo (idtipo);
