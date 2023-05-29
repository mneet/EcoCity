/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor


if (!txtCntrl)
{
	var _inst = instance_create_layer(x, y, "FX", obj_dialogFixo);
	_inst.text[0] = text[0];
	with(_inst)
		{
		text_last = 0;
		text_width = 590;
		text_x = x + 5;
		text_y = y + 5;
		}
	txtCntrl = true;
}

alphaDestroy();