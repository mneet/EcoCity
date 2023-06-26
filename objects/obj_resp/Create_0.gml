/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

txtCntrl = false;

timer = room_speed * 2;
text[0] = "";
resCerta = 0;
tamanho = 1;
tamanho_final = 1;
tamanho_alvo = 1.05;
autoDestroy = false;
image_alpha = 0;

alphaDestroy = function()
{
	if (global.respCntrl = true) autoDestroy = true;
	if (autoDestroy)
	{
		if (resCerta = true) image_blend = c_green;
		else image_blend = c_red;
		timer--;
		if (timer <= 0) instance_destroy(self);
	}
}