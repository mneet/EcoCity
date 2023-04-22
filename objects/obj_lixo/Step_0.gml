/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

var _mouse_sobre = position_meeting(mouse_x, mouse_y, id);
var _rclick = mouse_check_button_pressed(mb_left);

if (_mouse_sobre && _rclick) 
{
	if (selecionado = false) selecionado = true;
	else selecionado = false;
}

if (selecionado)
{
	x = mouse_x;
	y = mouse_y;
		
}

switch (tipo_lixo)
{
	case "M":
		sprite_index = spr_metal;
		break;
	case "O":
		sprite_index = spr_organico;
		break;
	case "PA":
		sprite_index = spr_papel;
		break;
	case "PL":
		sprite_index = spr_plastico;
		break;
	case "V":
		sprite_index = spr_vidro;
		break;		
}