/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

if (global.start) {
	if (!global.recGCmpltd){
		if(!instance_exists(obj_dialog)) criaDialogo("rm_recG");
	}
	else game_start();
}
else{
	timer = timer_total;
	gameEnd = false;
	lixo_respawn_cd = lixo_respawn_cdTot;
	pontos = 0;
}


//Debug
/*
if (keyboard_check_pressed(vk_space))
{
	start = true;
}
*/