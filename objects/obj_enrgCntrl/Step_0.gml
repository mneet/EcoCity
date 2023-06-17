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
	else checaLvl();
}

//debug
if (keyboard_check(vk_space)) proxLvl = true;
