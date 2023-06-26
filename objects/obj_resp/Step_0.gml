/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

if (image_alpha < 1 && !global.respCntrl) image_alpha += 0.05;
alphaDestroy();

if (!txtCntrl)
{
	var _inst = instance_create_layer(x, y, "FX", obj_dialogFixo);
	_inst.text[0] = text[0];
	with(_inst)
		{
		text_last = 0;
		text_width = 390;
		text_x = x + 45;
		text_y = y + 20;
		fonte = fnt_dialog2;
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

