/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
draw_self();


if (global.start)
{
	draw_text(x + 50, y + 37, "Pontos: " + string(obj_rec_control.pontos));

	var _segundos = obj_rec_control.timer / room_speed;
	draw_text(x + 50, y + 67, "Timer: " + string(round(_segundos)));
}