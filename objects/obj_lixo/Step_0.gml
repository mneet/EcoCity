/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

var _mouse_sobre = position_meeting(mouse_x, mouse_y, id);
var _rclick = mouse_check_button_pressed(mb_left);

if (_mouse_sobre && _rclick) 
{
	if (!obj_rec_control.mouseControl){
		selecionado = true;
		obj_rec_control.mouseControl = true;
	}
}


if (selecionado){
	x = mouse_x;
	y = mouse_y;
}

if (!global.start)
{
	visibilidade = lerp(visibilidade, 0, 0.2);
	image_alpha = visibilidade;
	if (image_alpha = 0) instance_destroy(self);
}

autoDestroy();