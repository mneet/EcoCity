/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

//if (!global.start) image_alpha = 0;
//else image_alpha = 1;

switch (tipo_lixeira)
{
	case "M":
		sprite_index = spr_lxra_metal;
		break;
	case "O":
		sprite_index = spr_lxra_organico;
		break;
	case "PA":
		sprite_index = spr_lxra_papel;
		break;
	case "PL":
		sprite_index = spr_lxra_plast;
		break;
	case "V":
		sprite_index = spr_lxra_vidro;
		break;
				
}