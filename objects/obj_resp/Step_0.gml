/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

alphaDestroy();

if (!txtCntrl)
{
	var _inst = instance_create_layer(x, y, "FX", obj_dialogFixo);
	_inst.text[0] = text[0];
	with(_inst)
		{
		text_last = 0;
		text_width = 380;
		text_x = x + 5;
		text_y = y + 5;
		text[text_current] = string_wrap(text[text_current], text_width);
		}
	txtCntrl = true;
}

//Checando se o mouse esta por cima de mim
var _mouse_sobre = position_meeting(mouse_x, mouse_y, id);
//Checando se o mouse clicou
var _mouse_click = mouse_check_button_pressed(mb_left);

//Checando se o mouse esta por cima de mim E a pessoa clicou
if (_mouse_sobre && !global.dialogoCntrl)
{
	//Mudar tamanho
	tamanho_final = tamanho_alvo;
	if (_mouse_click)
	{
		if (resCerta) obj_quizzCntrl.pontos++;
		else screenshake(5);	
		global.respCntrl = true;
	}
}
else
{
	tamanho_final = 1;
}


tamanho = lerp(tamanho, tamanho_final, 0.15);

image_xscale = tamanho;
image_yscale = tamanho;

