create or replace function actualizar_estado_usuario() returns trigger 
as
$$
begin
	update Usuarios
	set status= false 
	where ID=new.ID;
	return new;
end
$$LANGUAGE plpgsql;