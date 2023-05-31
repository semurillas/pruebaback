create view VistaUsuarioHabilidades as 
select CONCAT (U.NAME,' ',U.LASTNAME)as Nombre_Completo, H.NAME as Habilidad,
H.DESCRIPTION as Descripcion, N.type as Nivel
from habilidades_niveles HN
join Habilidades H on HN.HABILIDAD_ID = H.ID
join Usuarios U on H.USER_ID = U.ID
join Niveles N on HN.NIVEL_ID = N.ID;
