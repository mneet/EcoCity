/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

// Definindo arrays que armazenaram os dialogos
text[0] = "Hello World!";
text[1] = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eget ligula eu lectus lobortis condimentum. Aliquam nonummy auctor massa. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nulla at risus. Quisque purus magna, auctor et, sagittis ac, posuere eu, lectus. Nam mattis, felis ut adipiscing.";

// Variáveis de controle do texto
text_current = 0;
text_last	 = 1;
text_width	 = 600;
text_x		 = 32;
text_y		 = 32;
char_current = 1;
char_speed   = 0.5;
rmOrigem	 = 0;
fonte		 = fnt_dialog;

controleDialogo = function()
{
	global.dialogoCntrl = false;
	switch (rmOrigem)
	{
		case "Rec":
			global.recCmpltd = true;
		break;
	}
}


// Codigo para ser usado ao instanciar esse objeto:
/*
	var _inst = instance_create_layer(x, y, layer, obj_dialogo);
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
	    text[text_current] = string_wrap(text[text_current], text_width);
	    }
*/