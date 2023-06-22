/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

//Estado ligado e sprite caso seja o primeiro bloco 
if (global.tabuleiro[0].id = id && !ligado){
	ligado = true;
	if (tipoBloco = 0) image_angle = 90;
	else if (tipoBloco = 3) image_angle = 180;
}

if (tipoBloco = 4) tipoBloco = choose(1,2);

//Troca de sprite baseada no tipoBloco e estado
if (!ligado)
{
	if (tipoBloco = 1) sprite = spr_conduiteD;
	else if (tipoBloco = 2 || tipoBloco = 3) sprite = spr_conduiteL;
	else sprite = spr_bloco;
}
else
{
	if (tipoBloco = 1 || tipoBloco = 0) sprite = spr_conduiteDC;
	else if (tipoBloco = 2 || tipoBloco = 3) sprite = spr_conduiteLC;
	else sprite = spr_bloco;
}


sprite_index = sprite;
//Checando se o mouse esta por cima de mim
var _mouse_sobre = position_meeting(mouse_x, mouse_y, id);
//Checando se o mouse clicou
var _mouse_click_direito  = mouse_check_button_pressed(mb_right);
var _mouse_click_esquerdo = mouse_check_button_pressed(mb_left);

if (_mouse_sobre)
{
	if (tipoBloco = 1 || tipoBloco = 2)
	{
		if (_mouse_click_esquerdo)
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
			//checaOrdem();



		}
		if (_mouse_click_direito)
		{
			if (tipoBloco = 1)
			{
				if (image_angle = 0) image_angle = 90;
				else image_angle -= 90;
			}
			else
			{
				if (image_angle = 0) image_angle = 270;
				else image_angle -= 90;
			}
			//checaOrdem();

		}
	}
}

checaFluxo();
