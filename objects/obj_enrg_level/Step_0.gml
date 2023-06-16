/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

//Checando se o mouse esta por cima de mim
var _mouse_sobre = position_meeting(mouse_x, mouse_y, id);
//Checando se o mouse clicou
var _mouse_click = mouse_check_button_pressed(mb_left);

//Checando se o mouse esta por cima de mim E a pessoa clicou

if (_mouse_sobre)
{
	//Mudar tamanho
	tamanho_final = tamanho_alvo;
	if (_mouse_click && !click)
	{
		//Iniciando game
		click = true;
		obj_enrgCntrl.proxLvl = true;
		obj_enrgCntrl.botFlag = false;

	}
}
else
{
	tamanho_final = 1;
}


tamanho = lerp(tamanho, tamanho_final, 0.15);

image_xscale = tamanho;
image_yscale = tamanho;


if (click)
{
	visibilidade = lerp(visibilidade, 0, 0.2);
	image_alpha = visibilidade;
	if (image_alpha <= 0) {
		instance_destroy();

	}
}
else
{
	visibilidade = lerp(visibilidade, 1, 0.2);
	image_alpha = visibilidade;
}

