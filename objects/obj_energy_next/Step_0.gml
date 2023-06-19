/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor


//Checando se o mouse esta por cima de mim
var _mouse_sobre = position_meeting(mouse_x, mouse_y, id);
//Checando se o mouse clicou
var _mouse_click = mouse_check_button_pressed(mb_left);

//Checando se o mouse esta por cima de mim E a pessoa clicou
if (global.start && !global.dialogoCntrl)
{
	if (_mouse_sobre && !bloqueado)
	{
		if (_mouse_click)
		{
			obj_enrgCntrl.lvlCmpltd = true;
			bloqueado = true;
		}
	}
}


if (!bloqueado) sprite_index = spr_placarEnergyOn;
else sprite_index = spr_placarEnergyOff;
