 /// @description Iniciando variáveis e métodos

timer_total = 30 * room_speed;
timer = timer_total;
pontos = 0;
lixo_respawn_cdTot = room_speed * 2;
lixo_respawn_cd = lixo_respawn_cdTot;
lixo_respawn = lixo_respawn_cd;
mouseControl = false;
gameEnd = true;



if (global.recCmpltd = false)
{
	criaDialogo("rm_rec1");
}

lixo_spawn = function()
{
	var xx = random_range(185, 1085);
	var yy = random_range(140, 400);
	
	instance_create_layer(xx, yy, "Lixo", obj_lixo);
}

game_start = function()
{
	if (!gameEnd){
		if (timer > 0)
		{
			timer--;
			lixo_respawn--;
			if (lixo_respawn <= 0)
			{
				lixo_spawn(); 
				lixo_respawn_cd -= 0.06 * room_speed;
				lixo_respawn = lixo_respawn_cd;
			}
		
		}
		else 
		{
			if (instance_exists(obj_lixo)) instance_destroy(obj_lixo, all);
			gameEnd = true;
			if (gameEnd){
				if (pontos > global.recRecorde) global.recRecorde = pontos;
				criaDialogo("rm_recGameFinal");			
			}
		}
	}
	
}