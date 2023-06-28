/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

if (global.start) //Se jogo iniciado, crio tabuleiro e distribuo level caso já não tenha feito
{
	if (!tabCntrl)
	{
		criaLista();
		criaTabuleiro();
		criaLevel();
		levelCntrl = true;
		if (instance_exists(obj_energy_next)) obj_energy_next.bloqueado = true;
	}
	else //Checo se level foi completo, caso sim limpo o level e crio o próximo;
	{
		checaLvl();
		if (lvlCmpltd = true) {
			levelEnrg++;

			if (levelEnrg <= levelTot)
			{	
				limpaLevel();
				criaLevel();
				if (instance_exists(obj_energy_next)) obj_energy_next.bloqueado = true;
			}
			else //Caso tenha chego ao fim, inicio dialogo final e finalizo o jogo
			{
				criaDialogo("rm_energyGameFinal");
				global.energyGameC = true;

			}
			lvlCmpltd =  false;
		}
	}
}
else { //Destruo blocos, fluxos e reseto variaveis caso o jogo tenha acabado.
	if (instance_exists(obj_bloco)) instance_destroy(obj_bloco, all);
	if (instance_exists(obj_fluxo)) instance_destroy(obj_fluxo, all);
	levelEnrg = 0;
	tabCntrl = false;
}


