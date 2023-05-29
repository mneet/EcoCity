/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

//Checando se o mouse esta por cima de mim
var _mouse_sobre = position_meeting(mouse_x, mouse_y, id);
//Checando se o mouse clicou
var _mouse_click = mouse_check_button_pressed(mb_left);

//Checando se o mouse esta por cima de mim E a pessoa clicou
if (_mouse_sobre)
{
	if (!global.dialogoCntrl && !popup)
	{
		//Mudar tamanho
		tamanho_final = tamanho_alvo;
		var _inst = instance_create_layer(x, y, layer, obj_popupText);
		with(_inst)
		    {
		    text[0] = "This is some text";
		    text[1] = "This is more text";
		    text[2] = "This is yet more text";
		    text[3] = "I talk too much!";
		    text_last = 3;
		    text_width = 150;
		    text_x = x;
		    text_y = y;
		    }
		popup = true
	}
}
else
{
	tamanho_final = 1;
	if (instance_exists(obj_popupText)) instance_destroy(obj_popupText);
	popup = false;
}


tamanho = lerp(tamanho, tamanho_final, 0.15);

image_xscale = tamanho;
image_yscale = tamanho;