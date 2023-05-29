/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

txtCntrl = false;

text[0] = "";
resCerta = 0;
tamanho = 1;
tamanho_final = 1;
tamanho_alvo = 1.05;
autoDestroy = false;


alphaDestroy = function()
{
	if (global.respCntrl = true) autoDestroy = true;
	if (autoDestroy)
	{
		image_alpha -= 0.05;
		if (image_alpha <= 0) instance_destroy(self);
	}
}