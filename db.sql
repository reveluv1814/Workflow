create table FlujoProceso(
    Flujo VARCHAR(3),
    Proceso VARCHAR(3),
    ProcesoSiguiente VARCHAR(3),
    Tipo VARCHAR(1),
    Pantalla VARCHAR(20),
    Rol VARCHAR(20),
);

create table FlujoProcesoCondicionante(
    Flujo VARCHAR(3),
    Proceso VARCHAR(3),
    ProcesoSI VARCHAR(3),
    ProcesoNO VARCHAR(3)
);
insert into FlujoProceso values('F1','P1','P2','I','Inicio','Alumno');
insert into FlujoProceso values('F1','P2','P3','P','Documentos','Alumno');
insert into FlujoProceso values('F1','P3','P4','P','Presentar','Alumno');
insert into FlujoProceso values('F1','P4',null,'C','AlDia','Kardex');
insert into FlujoProceso values('F1','P5',null,'F','CausaNegativa','Kardex');
insert into FlujoProceso values('F1','P6','p7','P','PagoInscripcion','Kardex');
insert into FlujoProceso values('F1','P7','p8','P','ControlDocumentos','Kardex');
insert into FlujoProceso values('F1','P8','p9','P','ElegirCarrera','Alumno');
insert into FlujoProceso values('F1','P9','p10','P','Solicitarcodigo','Alumno');
insert into FlujoProceso values('F1','P10',null,'P','CompraCarnet','Caja');

create table alumno 
(
id int,
nombrecompleto varchar(30),
coddepto varchar(2),
promedio float
)

insert into alumno values(23,'moises','02',70);
insert into alumno values(25,'mayo','03',50);
insert into alumno values(31,'moyo','02',45);
insert into alumno values(32,'julia','02',78);
insert into alumno values(34,'mercedes','04',87);
insert into alumno values(36,'camaron','04',88);
insert into alumno values(40,'cameron','03',90);
insert into alumno values(21,'dieter','03',75);
alter table alumno add column cnacimiento varchar(3);
alter table alumno add column cidentidad varchar(3);

create table FlujoProcesoSeguimiento
(
    Flujo VARCHAR(3),
    Proceso VARCHAR(3),
    NumeroTramite int,
    Usuario VARCHAR(15),
    FechaInicio DATE,
    HoraInicio TIME,
    FechaFin DATE,
    HoraFin TIME
);

insert into FlujoProcesoSeguimiento values('F1','P1','1000','msilva','2022/04/20','10:00:00','2022/04/20','14:00:00');
insert into FlujoProcesoSeguimiento values('F1','P2','1000','msilva','2022/04/20','14:01:00','2022/04/22','10:00:00');
insert into FlujoProcesoSeguimiento values('F1','P3','1000','msilva','2022/04/22','10:01:00',null,null);
insert into FlujoProcesoSeguimiento values('F2','P1','2020','msilva','2022/04/20','10:10:00','2022/04/21','11:10:00');
insert into FlujoProcesoSeguimiento values('F2','P2','2020','msilva','2022/04/21','11:11:00',null,null);
insert into FlujoProcesoSeguimiento values('F1','P1','1010','jhuaranca','2022/04/11','09:00:00','2022/04/11','09:10:00');
insert into FlujoProcesoSeguimiento values('F1','P2','10','jhuaranca','2022/04/11','09:11:00',null,null);