/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

randomize();
tipo_lixo = choose("M", "O", "PA", "PL", "V");
selecionado = false;
visibilidade = image_alpha;

switch (tipo_lixo)
{
	case "M":
		sprite_index = spr_metal;
		break;
	case "O":
		sprite_index = spr_organico;
		break;
	case "PA":
		sprite_index = spr_papel;
		break;
	case "PL":
		sprite_index = spr_plastico;
		break;
	case "V":
		sprite_index = spr_vidro;
		break;		
}


