/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

if (tipoBloco = 1) sprite = spr_direto;
else if (tipoBloco = 2) sprite = spr_lateral;
else sprite = spr_bloco;


sprite_index = sprite;
//Checando se o mouse esta por cima de mim
var _mouse_sobre = position_meeting(mouse_x, mouse_y, id);
//Checando se o mouse clicou
var _mouse_click = mouse_check_button_pressed(mb_left);

if (_mouse_sobre)
{
	if (_mouse_click)
	{
		if (tipoBloco = 1)
		{
			if (image_angle >= 90) image_angle = 0;
			else image_angle += 90;
		}
		else
		{
			if (image_angle >= 270) image_angle = 0;
			else image_angle += 90;
		}
	checaOrdem();
	}
}

