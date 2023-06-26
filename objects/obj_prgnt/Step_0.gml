/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

if (image_alpha < 1 && !global.respCntrl) image_alpha += 0.05;
if (!txtCntrl)
{
	var _inst = instance_create_layer(0, 0, "FX", obj_dialogFixo);
	_inst.text[0] = text[0];
	with(_inst)
		{
		text_last = 0;
		text_width = 810;
		text_x = 230;
		text_y = 140;
		}
	txtCntrl = true;
}

alphaDestroy();