/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

text[0] = "";
resCerta = 0;
tamanho = 1;
tamanho_final = 1;
tamanho_alvo = 1.05;
prgntResp = false;

// Variáveis de controle do texto
text_current = 0;
text_last	 = 1;
text_width	 = 15;
text_x		 = x + 16;
text_y		 = y + 16;
char_current = 1;
char_speed   = 0.5;
text[text_current] = string_wrap(text[text_current], text_width);

show_debug_message(text_width);

alphaDestroy = function()
{
	if (prgntResp = true)
	{
		image_alpha -= 0.05;
		if (image_alpha <= 0) instance_destroy(self);
	}
}