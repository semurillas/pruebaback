create trigger actualizarEstado
after update on Usuarios
for each row
execute function actualizar_estado_usuario();