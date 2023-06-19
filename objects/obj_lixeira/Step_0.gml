/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

if (!global.start){
	switch (tipo_lixeira)
	{
		case "M":
			sprite_index = spr_lixeiraMetalN;
			break;
		case "O":
			sprite_index = spr_lixeiraOrganicoN;
			break;
		case "PA":
			sprite_index = spr_lixeiraPapelN;
			break;
		case "PL":
			sprite_index = spr_lixeiraPlasticoN;
			break;
		case "V":
			sprite_index = spr_lixeiraVidroN;
			break;				
	}
}
else{
	switch (tipo_lixeira)
	{
		case "M":
			sprite_index = spr_lixeiraMetal;
			break;
		case "O":
			sprite_index = spr_lixeiraOrganico;
			break;
		case "PA":
			sprite_index = spr_lixeiraPapel;
			break;
		case "PL":
			sprite_index = spr_lixeiraPlastico;
			break;
		case "V":
			sprite_index = spr_lixeiraVidro;
			break;				
	}
}