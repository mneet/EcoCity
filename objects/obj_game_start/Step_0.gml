/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

if (sprite_index != sprite) sprite_index = sprite;
if (tamanho = 0){
	tamanho = tamanho_inicial;
	tamanho_final = tamanho;
	tamanho_alvo = tamanho * 1.1;
}

//Checando se o mouse esta por cima de mim
var _mouse_sobre = position_meeting(mouse_x, mouse_y, id);
//Checando se o mouse clicou
var _mouse_click = mouse_check_button_pressed(mb_left);

//Checando se o mouse esta por cima de mim E a pessoa clicou
if (!global.start && !global.dialogoCntrl)
{
	if (_mouse_sobre)
	{
		//Mudar tamanho
		tamanho_final = tamanho_alvo;
		if (_mouse_click)
		{
			//Iniciando game
			click = true;
		}
	}
	else
	{
		tamanho_final = tamanho_inicial;
	}
}

tamanho = lerp(tamanho, tamanho_final, 0.15);

image_xscale = tamanho;
image_yscale = tamanho;

if (click)
{
	timer_start--;
	if (timer_start = 0)
	{
		global.start = true;
		click = false;
		timer_start = timer_start_total;
	}
}

if (global.start = true || click)
{
	visibilidade = lerp(visibilidade, 0, 0.2);
	image_alpha = visibilidade;
}
else
{
	visibilidade = lerp(visibilidade, 1, 0.2);
	image_alpha = visibilidade;
}

