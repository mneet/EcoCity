/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

// Definindo arrays que armazenaram os dialogos
text[0] = "";
txtCntrl = false;

alphaDestroy = function()
{
	if (global.respCntrl = true)
	{
		image_alpha -= 0.05;
		if (image_alpha <= 0) 
		{
			global.respCntrl = false;
			obj_quizzCntrl.prgntAtiva = false;
			instance_destroy(self);
			instance_destroy(obj_dialogFixo, all);
		}
	}
}
