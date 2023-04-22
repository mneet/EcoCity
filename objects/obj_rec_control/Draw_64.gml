/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

if (global.start)
{
	draw_text(20, 20, "Pontos: " + string(pontos));

	var _segundos = timer / room_speed;
	draw_text(20, 40, "Timer: " + string(round(_segundos)));
}