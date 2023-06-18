 /// @description Iniciando variáveis e métodos

timer_total = 40 * room_speed;
timer = timer_total;
pontos = 0;
lixo_respawn_cd = room_speed * 1;
lixo_respawn = lixo_respawn_cd;




if (global.recCmpltd = false)
{
	var _inst = instance_create_layer(0, 0, "Dialog", obj_dialog);
	with(_inst)
	    {
			global.dialogoCntrl  = true;
			rmOrigem = "Rec";
		    texto[0] = "Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur";
		    texto[1] = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.";
		    texto[2] = "This is yet more text";
		    texto[3] = "I talk too much!";
		    text_last = 3;
		    text_width = 870;
		    text_x = 270;
		    text_y = 480;
			sprPersonagem = spr_chatPedro;
	    }
}

lixo_spawn = function()
{
	var xx = random_range(100, 1180);
	var yy = random_range(60, 450);
	
	instance_create_layer(xx, yy, "Lixo", obj_lixo);
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
		global.start = false;
		timer = timer_total;
	}
	
}