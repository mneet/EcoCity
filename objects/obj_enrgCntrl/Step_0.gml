/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

if (global.start)
{
	if (!tabCntrl)
	{
		criaTabuleiro();
		criaLevel();
		levelCntrl = true;
	}
	else 
	{
		//checaLvl();
		if (lvlCmpltd = true) {
			levelEnrg++;
			if (levelEnrg <= levelTot)
			{
				criaLevel();
			}
			else
			{
				criaDialogo("rm_energyGameFinal");

			}
			lvlCmpltd =  false;
		}
	}
}
else {
	if (instance_exists(obj_bloco)) instance_destroy(obj_bloco, all);
	levelEnrg = 1;
}
//debug

