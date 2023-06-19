/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

randomize();
tipo_lixo = choose("M", "O", "PA", "PL", "V");
selecionado = false;
visibilidade = image_alpha;
timer = room_speed * 3;

switch (tipo_lixo)
{
	case "M":
		sprite_index = choose(spr_metal, spr_metal2);
		break;
	case "O":
		sprite_index = choose(spr_organico, spr_organico2);
		break;
	case "PA":
		sprite_index = choose(spr_papel, spr_papel2);
		break;
	case "PL":
		sprite_index = choose(spr_plastico, spr_plastico2);
		break;
	case "V":
		sprite_index = choose(spr_vidro, spr_vidro2);
		break;		
}


autoDestroy = function()
{
	timer--;
	if (timer <= 0) instance_destroy();
}