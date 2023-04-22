/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

start = false;
timer_total = 20 * room_speed;
timer = timer_total;
pontos = 0;
lixo_respawn_cd = room_speed * 2;
lixo_respawn = lixo_respawn_cd;


if (global.recCmpltd = false)
{
	var _inst = instance_create_layer(x, y, layer, obj_dialog);
	with(_inst)
	    {
			global.dialogoCntrl  = true;
			rmOrigem = "Rec";
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
}

lixo_spawn = function()
{
	var xx = random_range(100, 1180);
	var yy = random_range(50, 600);
	
	instance_create_layer(xx, yy, "Instances", obj_lixo);
}

game_start = function()
{
	if (timer > 0)
	{
		timer--;
		lixo_respawn--;
		if (lixo_respawn <= 0)
		{
			lixo_spawn();
			lixo_respawn = lixo_respawn_cd;
		}
	}
	else 
	{
		start = false;
		timer = timer_total;
	}
	
}