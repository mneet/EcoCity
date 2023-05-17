// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações

function screenshake(_shake)
{
	//Criando o screenshake
	var screen = instance_create_layer(0, 0, "Instances", obj_scrnshake);
	global.shake = _shake;
	show_debug_message(global.shake);
}

