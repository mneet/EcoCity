/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

// Definindo arrays que armazenaram os dialogos
text[0] = "";
txtCntrl = false;
timer = room_speed * 2;
image_alpha = 0;

alphaDestroy = function()
{
	if (global.respCntrl = true)
	{
		timer--;
		if (timer <= 0) 
		{
			global.respCntrl = false;
			obj_quizzCntrl.prgntAtiva = false;
			instance_destroy(self);
			instance_destroy(obj_dialogFixo, all);
		}
	}
}
