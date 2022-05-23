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