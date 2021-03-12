/*==============================================================*/
/* Table: ESTUDIANTE                                            */
/*==============================================================*/
create table ESTUDIANTE (
   EST_ID               INT4                 not null,
   EST_CEDULA           INT4                 not null,
   EST_NOMBRE           CHAR(100)            not null,
   EST_APELLIDO         CHAR(100)            not null,
   EST_GENERO           CHAR(100)            not null,
   EST_NACIONALIDAD     CHAR(100)            not null,
   constraint PK_ESTUDIANTE primary key (EST_ID)
);

/*==============================================================*/
/* Table: PARENTESCO                                            */
/*==============================================================*/
create table PARENTESCO (
   PR_ID                INT4                 not null,
   PR_DESCRIPCION       CHAR(100)            not null,
   constraint PK_PARENTESCO primary key (PR_ID)
);

/*==============================================================*/
/* Table: PROFESIONAL                                           */
/*==============================================================*/
create table PROFESIONAL (
   PROFESIONAL_ID       INT4                 not null,
   EST_ID               INT4                 not null,
   PROFESIONAL_CEDULA   CHAR(100)            not null,
   PROFESIONAL_APELLIDO CHAR(100)            not null,
   PROFESIONAL_NOMBRE   CHAR(100)            not null,
   PORFESIONAL_GENERO CHAR(100)              not null,
   PORFESIONAL_CERTIFICADO CHAR(100)            not null,
   constraint PK_PROFESIONAL primary key (PROFESIONAL_ID)
);

/*==============================================================*/
/* Table: PROGRAMA                                              */
/*==============================================================*/
create table PROGRAMA (
   P_ID                 INT4                 not null,
   PROFESIONAL_ID       INT4                 not null,
   P_TIPO               CHAR(100)            not null,
   constraint PK_PROGRAMA primary key (P_ID)
);

/*==============================================================*/
/* Table: PROPUESTA_PROGRAMA                                    */
/*==============================================================*/
create table PROPUESTA_PROGRAMA (
   PP_ID                INT4                 not null,
   P_ID                 INT4                 not null,
   PP_DESCRIPCION       CHAR(100)            not null,
   PP_MATERIAL          CHAR(100)            not null,
   PP_DURACION          CHAR(100)            not null,
   constraint PK_PROPUESTA_PROGRAMA primary key (PP_ID)
);

/*==============================================================*/
/* Table: RENDIMIENTO                                           */
/*==============================================================*/
create table RENDIMIENTO (
   REND_ID              INT4                 not null,
   EST_ID               INT4                 not null,
   REND_PONDERACION     CHAR(100)            not null,
   constraint PK_RENDIMIENTO primary key (REND_ID)
);

/*==============================================================*/
/* Table: REPRESENTANTE                                         */
/*==============================================================*/
create table REPRESENTANTE (
   R_ID                 INT4                 not null,
   EST_ID               INT4                 not null,
   PR_ID                INT4                 not null,
   R_CEDULA             INT4                 not null,
   R_NOMBRE             CHAR(100)            not null,
   R_APELLIDO           CHAR(100)            not null,
   R_GENERO             CHAR(100)            not null,
   R_NACIONALIDAD       CHAR(100)            not null,
   R_DIRECCION          CHAR(100)            not null,
   R_TELEFONO           CHAR(100)            not null,
   R_TELEFONOCASA       CHAR(100)            not null,
   constraint PK_REPRESENTANTE primary key (R_ID)
);

/*==============================================================*/
/* Table: SES_ESTUDIANTE                                        */
/*==============================================================*/
create table SES_ESTUDIANTE (
   SES_ID               INT4                 not null,
   EST_ID               INT4                 not null,
   SES_MEDICAMENTO      CHAR(100)            not null,
   SES_ULTIMACITA       DATE                 not null,
   SES_DIAGNOSTICO      CHAR(100)            not null,
   SES_TALLAZAPATO      CHAR(100)            not null,
   SES_TALLAVESTIMENTA  CHAR(100)            not null,
   constraint PK_SES_ESTUDIANTE primary key (SES_ID)
);

alter table PROFESIONAL
   add constraint FK_PROFESIO_RELATIONS_ESTUDIAN foreign key (EST_ID)
      references ESTUDIANTE (EST_ID)
      on delete restrict on update restrict;

alter table PROGRAMA
   add constraint FK_PROGRAMA_RELATIONS_PROFESIO foreign key (PROFESIONAL_ID)
      references PROFESIONAL (PROFESIONAL_ID)
      on delete restrict on update restrict;

alter table PROPUESTA_PROGRAMA
   add constraint FK_PROPUEST_RELATIONS_PROGRAMA foreign key (P_ID)
      references PROGRAMA (P_ID)
      on delete restrict on update restrict;

alter table RENDIMIENTO
   add constraint FK_RENDIMIE_RELATIONS_ESTUDIAN foreign key (EST_ID)
      references ESTUDIANTE (EST_ID)
      on delete restrict on update restrict;

alter table REPRESENTANTE
   add constraint FK_REPRESEN_RELATIONS_ESTUDIAN foreign key (EST_ID)
      references ESTUDIANTE (EST_ID)
      on delete restrict on update restrict;

alter table REPRESENTANTE
   add constraint FK_REPRESEN_RELATIONS_PARENTES foreign key (PR_ID)
      references PARENTESCO (PR_ID)
      on delete restrict on update restrict;

alter table SES_ESTUDIANTE
   add constraint FK_SES_ESTU_RELATIONS_ESTUDIAN foreign key (EST_ID)
      references ESTUDIANTE (EST_ID)
      on delete restrict on update restrict;







---DATOS
---ESTUDIANTE
insert into ESTUDIANTE(EST_ID,EST_CEDULA,EST_NOMBRE,EST_APELLIDO,EST_GENERO,EST_NACIONALIDAD)  
VALUES ('01','1313584562','MELANY','LUCAS','FEMENINO','ECUATORINA');

insert into ESTUDIANTE(EST_ID,EST_CEDULA,EST_NOMBRE,EST_APELLIDO,EST_GENERO,EST_NACIONALIDAD)  
VALUES ('02','1318799562','JUAN','CORTEZ','MASCULINO','MEXICANA');

insert into ESTUDIANTE(EST_ID,EST_CEDULA,EST_NOMBRE,EST_APELLIDO,EST_GENERO,EST_NACIONALIDAD)  
VALUES ('03','1313545262','ROSA','LOPEZ','FEMENINO','VENEZOLANA');

insert into ESTUDIANTE(EST_ID,EST_CEDULA,EST_NOMBRE,EST_APELLIDO,EST_GENERO,EST_NACIONALIDAD)  
VALUES ('04','1313512462','JOSE','MOREIRA','MASCULINNO','CHILENA');

insert into ESTUDIANTE(EST_ID,EST_CEDULA,EST_NOMBRE,EST_APELLIDO,EST_GENERO,EST_NACIONALIDAD)  
VALUES ('05','1311184562','MAKOL','RODRIGUEZ','FEMENINO','ECUATORINA');

insert into ESTUDIANTE(EST_ID,EST_CEDULA,EST_NOMBRE,EST_APELLIDO,EST_GENERO,EST_NACIONALIDAD)  
VALUES ('06','131357562','MONSERRATE','VALDEZ','FEMENINO','ECUATORINA');

insert into ESTUDIANTE(EST_ID,EST_CEDULA,EST_NOMBRE,EST_APELLIDO,EST_GENERO,EST_NACIONALIDAD)  
VALUES ('07','1313224562','JULIO','CASTRO','MASCULINO','ECUATORINA');

insert into ESTUDIANTE(EST_ID,EST_CEDULA,EST_NOMBRE,EST_APELLIDO,EST_GENERO,EST_NACIONALIDAD)  
VALUES ('08','1336874502','CARLOTA','LUCAS','FEMENINO','CHILENA');

insert into ESTUDIANTE(EST_ID,EST_CEDULA,EST_NOMBRE,EST_APELLIDO,EST_GENERO,EST_NACIONALIDAD)  
VALUES ('09','1313777562','KEVIN','MERO','MASCULINO','MEXICANA');

insert into ESTUDIANTE(EST_ID,EST_CEDULA,EST_NOMBRE,EST_APELLIDO,EST_GENERO,EST_NACIONALIDAD)  
VALUES ('10','0953584562','JESSICA','RUIZ','FEMENINO','ECUATORINA');

insert into ESTUDIANTE(EST_ID,EST_CEDULA,EST_NOMBRE,EST_APELLIDO,EST_GENERO,EST_NACIONALIDAD)  
VALUES ('11','131358442','ALISON','MERO','FEMENINO','ECUATORINA');

insert into ESTUDIANTE(EST_ID,EST_CEDULA,EST_NOMBRE,EST_APELLIDO,EST_GENERO,EST_NACIONALIDAD)  
VALUES ('12','131311562','JESEENIA','LUCAS','FEMENINO','ECUATORINA');


---PARENTESCO 

insert into PARENTESCO (PR_ID ,PR_DESCRIPCION)  
VALUES ('01','TIO');

insert into PARENTESCO (PR_ID ,PR_DESCRIPCION)  
VALUES ('02','MADRE');

insert into PARENTESCO (PR_ID ,PR_DESCRIPCION)  
VALUES ('03','PADRE');

insert into PARENTESCO (PR_ID ,PR_DESCRIPCION)  
VALUES ('04','SOBRINO');

insert into PARENTESCO (PR_ID ,PR_DESCRIPCION)  
VALUES ('05','ABUELA');

insert into PARENTESCO (PR_ID ,PR_DESCRIPCION)  
VALUES ('06','HERMANO');

insert into PARENTESCO (PR_ID ,PR_DESCRIPCION)  
VALUES ('07','OTRO');


-----PROFESIONAL

insert into PROFESIONAL(PROFESIONAL_ID,EST_ID ,PROFESIONAL_CEDULA,PROFESIONAL_NOMBRE,PROFESIONAL_APELLIDO,PORFESIONAL_CERTIFICADO,PORFESIONAL_GENERO)  
VALUES ('01','01','131311562','JESEENIA','LUCAS','DOCENTE','FEMENINO');


insert into PROFESIONAL(PROFESIONAL_ID,EST_ID ,PROFESIONAL_CEDULA,PROFESIONAL_NOMBRE,PROFESIONAL_APELLIDO,PORFESIONAL_CERTIFICADO,PORFESIONAL_GENERO)  
VALUES ('02','02','132541562','MARTHA','REYES','DOCTOR','FEMENINO');

insert into PROFESIONAL(PROFESIONAL_ID,EST_ID ,PROFESIONAL_CEDULA,PROFESIONAL_NOMBRE,PROFESIONAL_APELLIDO,PORFESIONAL_CERTIFICADO,PORFESIONAL_GENERO)  
VALUES ('03','03','13131162','VICTOR','LOPEZ','DOCENTE','MASCULINO');

insert into PROFESIONAL(PROFESIONAL_ID,EST_ID ,PROFESIONAL_CEDULA,PROFESIONAL_NOMBRE,PROFESIONAL_APELLIDO,PORFESIONAL_CERTIFICADO,PORFESIONAL_GENERO)  
VALUES ('04','04','131344962','MIGUEL ','PINCAY','DOCENTE','MASCULINO');


insert into PROFESIONAL(PROFESIONAL_ID,EST_ID ,PROFESIONAL_CEDULA,PROFESIONAL_NOMBRE,PROFESIONAL_APELLIDO,PORFESIONAL_CERTIFICADO,PORFESIONAL_GENERO)  
VALUES ('05','05','0974111562','ROSA','MANTUANO','DOCENTE','FEMENINO');

insert into PROFESIONAL(PROFESIONAL_ID,EST_ID ,PROFESIONAL_CEDULA,PROFESIONAL_NOMBRE,PROFESIONAL_APELLIDO,PORFESIONAL_CERTIFICADO,PORFESIONAL_GENERO)  
VALUES ('06','06','13111562','ROBERTH','MOREIRA','DOCENTE','MASCULINO');

insert into PROFESIONAL(PROFESIONAL_ID,EST_ID ,PROFESIONAL_CEDULA,PROFESIONAL_NOMBRE,PROFESIONAL_APELLIDO,PORFESIONAL_CERTIFICADO,PORFESIONAL_GENERO)  
VALUES ('07','07','131317882','PAOLA','ALAVA','DOCENTE','FEMENINO');


insert into PROFESIONAL(PROFESIONAL_ID,EST_ID ,PROFESIONAL_CEDULA,PROFESIONAL_NOMBRE,PROFESIONAL_APELLIDO,PORFESIONAL_CERTIFICADO,PORFESIONAL_GENERO)  
VALUES ('08','08','1312462','MARIO','DIAZ','DOCENTE','MASCULINO');

insert into PROFESIONAL(PROFESIONAL_ID,EST_ID ,PROFESIONAL_CEDULA,PROFESIONAL_NOMBRE,PROFESIONAL_APELLIDO,PORFESIONAL_CERTIFICADO,PORFESIONAL_GENERO)  
VALUES ('09','09','131311562','JACINTO','REYES','DOCENTE','MASCULINO');

insert into PROFESIONAL(PROFESIONAL_ID,EST_ID ,PROFESIONAL_CEDULA,PROFESIONAL_NOMBRE,PROFESIONAL_APELLIDO,PORFESIONAL_CERTIFICADO,PORFESIONAL_GENERO)  
VALUES ('10','10','131311562','DOLORES','CARDENAS','DOCENTE','FEMENINO');


---PROGRAMA

 insert into PROGRAMA (P_ID,PROFESIONAL_ID,P_TIPO )  
VALUES ('01','01','ESTIMULACION DESARROLLO INTELECTUAL');

insert into PROGRAMA (P_ID,PROFESIONAL_ID,P_TIPO )  
VALUES ('02','02','DESARROLLO EMOCIONAL');

insert into PROGRAMA (P_ID,PROFESIONAL_ID,P_TIPO )  
VALUES ('03','03','MOTRICIDAD');

insert into PROGRAMA (P_ID,PROFESIONAL_ID,P_TIPO )  
VALUES ('04','04','MOTRICIDAD');

insert into PROGRAMA (P_ID,PROFESIONAL_ID,P_TIPO )  
VALUES ('05','05','DESARROLLO EMOCIONAL');

insert into PROGRAMA (P_ID,PROFESIONAL_ID,P_TIPO )  
VALUES ('06','06','ESTIMULACION DESARROLLO INTELECTUAL');

insert into PROGRAMA (P_ID,PROFESIONAL_ID,P_TIPO )  
VALUES ('07','07','ESTIMULACION DESARROLLO INTELECTUAL');

insert into PROGRAMA (P_ID,PROFESIONAL_ID,P_TIPO )  
VALUES ('08','08','MOTRICIDAD');




----Cursor  que muestre la cantidad de nacionalidad que están en el curso 

do $$
declare

        tabla record;
        est_nacionalidad cursor for select 
			count(distinct nacionalidad) as Nacionalidad
			from est_nacionalidad
			where nacionalidad>=  and est_nacionalidad ;
begin
open Estudiante;
fetch estu_nacionalidad into tabla;
while(found) loop
Raise notice 'diferente nacionalidad que pertenecen los estudiantes : %', tabla.est_nacionalidad;
fetch nacionalidad into tabla;
end loop;
end $$
language 'plpgsql';


-------------------------------------------------------



-Trigger que no permita matricular a un estudiante a un estudiante que no este en la edad de entre 3 y 4 años. 

CREATE OR REPLACE FUNCTION est_edad() returns Trigger
AS 
$$
Begin
if (new.est_edad)<> 3 and (new.est_edad)<> 4 then
raise warning '';
return null;
else
return new;
end if;



END
$$

Language plpgsql

create  trigger edad before insert on nino
for each row execute procedure edad();


--------------------------------------------------------


--Procedimiento almacenado 
----que retorne el rendimineto de los estudiantes exelente.

CREATE OR REPLACE FUNCTION rendimiento_estudiante(
actividad char) 
returns table(rendimiento_estudiante char)
AS $BODY$
BEGIN
return query
select
rendimiento.rendimiento_est
from programa
inner join public.rendimiento_est on programa.rendiento_id=actividad_programa.rendimieto_id
where programa.programa_descripcion = actividad;
END;
$BODY$ LANGUAGE plpgsql;

select * from 


