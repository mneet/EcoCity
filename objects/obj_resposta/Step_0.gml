/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

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
		if (resCerta) obj_quizzControl.pontos++;
		else screenshake(5);	
		show_debug_message(resCerta);
		
		obj_quizzControl.respCntrl = true;
	}
}
else
{
	tamanho_final = 1;
}


tamanho = lerp(tamanho, tamanho_final, 0.15);

image_xscale = tamanho;
image_yscale = tamanho;

alphaDestroy();