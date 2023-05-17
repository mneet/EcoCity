/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor


// Definindo arrays que armazenaram os dialogos
text[0] = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eget ligula eu lectus lobortis condimentum. Aliquam nonummy auctor massa. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nulla at risus. Quisque purus magna, auctor et, sagittis ac, posuere eu, lectus. Nam mattis, felis ut adipiscing.";


// Variáveis de controle do texto
text_current = 0;
text_last	 = 1;
text_width	 = 516;
text_x		 = x + 16;
text_y		 = y + 16;
char_current = 1;
char_speed   = 0.5;
rmOrigem	 = 0;
prgntResp	 = false;
text[text_current] = string_wrap(text[text_current], text_width);

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

alphaDestroy = function()
{
	if (prgntResp = true)
	{
		image_alpha -= 0.01;
		if (image_alpha <= 0) 
		{
			instance_destroy(self);
			obj_quizzControl.prgntCrd  = false;
		}
	}
}