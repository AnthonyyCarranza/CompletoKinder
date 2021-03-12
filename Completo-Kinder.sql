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


