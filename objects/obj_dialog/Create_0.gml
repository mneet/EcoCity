/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

// Definindo arrays que armazenaram os dialogos
texto[0] = "";

// Variáveis de controle do texto
text_current = 0;
text_last	 = 0;
text_width	 = 0;
text_x		 = 0;
text_y		 = 0;
char_current = 1;
char_speed   = 1;
rmOrigem	 = 0;
popUp        = 0;
sprPersonagem   = 0;


//if (sprite_index != sprPersonagem) sprite_index = sprPersonagem;

controleDialogo = function()
{
	global.dialogoCntrl = false;
	switch (rmOrigem)
	{
		case "Rec":
			global.recCmpltd = true;
		break;
		case "Quiz":
			global.quizzCmpltd = true;
		break;
		case "Energia":
			global.energyCmpltd = true;
		break;
		case "EnergiaGame":
			global.energyFCmpltd = true;
		break;
		case "Menu":
			global.menuCmpltd = true;
		break;
		case "GameFinal":
			global.start = false;
			break;
		case "GameInicial":
			global.recGCmpltd = true;
			break;
	}
	if (popUp != 0) popUp.lido = true;
}


// Codigo para ser usado ao instanciar esse objeto:
/*
	var _inst = instance_create_layer(x, y, layer, obj_dialogo);
	with(_inst)
	    {
	    texto[0] = "This is some text";
	    texto[1] = "This is more text";
	    texto[2] = "This is yet more text";
	    texto[3] = "I talk too much!";
	    text_last = 3;
	    text_width = 150;
	    text_x = x;
	    text_y = y;
	    }
*/