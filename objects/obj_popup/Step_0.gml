
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

if (global.dialogoCntrl) image_alpha = .3;
else image_alpha = 1;

if (lido) image_alpha = .7;

//Checando se o mouse esta por cima de mim E a pessoa clicou
if (_mouse_sobre && !global.dialogoCntrl)
{
	//Mudar tamanho
	tamanho_final = tamanho_alvo;
	if (_mouse_click)
	{
			var _inst = instance_create_layer(0, 0, "Dialog", obj_dialog);
			with(_inst)
			{
				global.dialogoCntrl  = true;
				rmOrigem = "Rec";
			    text_last = 0;
			    text_width = 870;
			    text_x = 270;
			    text_y = 480;
				popUp  = other.id;
				texto[0] = other.texto;
				sprite_index = other.sprPersonagem;
			}
	}
}
else
{
	tamanho_final = tamanho_inicial;
}


tamanho = lerp(tamanho, tamanho_final, 0.15);

image_xscale = tamanho;
image_yscale = tamanho;