/// @description Iniciando variáveis e funções do controlador do minigame de Energia

//Garantir aleatoriedade
randomize();

//Iniciando variáveis

global.tabuleiro = array_create(20);
tabCntrl  = false;
margem = 0;
i = 0;
levelEnrg = 1;
levelTot  = 5;
levelCntrl = false;
lvlCmpltd = false;

timerTotal = room_speed * 1;
timer = timerTotal;


// Controle de Dialogo
if (global.energyFCmpltd = false)
{
	criaDialogo("rm_energy2");
}

// Crio os blocos de energia nas posições corretas
criaTabuleiro = function()
{	
	var _jumpX = 0;
	var _xx = 449;
	var _yy = 104;
	
	for (i = 0; i < 20; i++)
	{
	
		global.tabuleiro[i] = instance_create_layer(_xx, _yy, layer, obj_bloco);
		global.tabuleiro[i].tipoBloco = 2;
		
		if (_jumpX = 3 )
		{
			_xx = 449;
			_yy += 128 + margem;
			_jumpX = 0;
		}
		else
		{
			_xx += 128 + margem;
			_jumpX++;
		}
	
	
	}
	
	tabCntrl = true;
}

//Distribuo definições dos levels pré-definidos
criaLevel = function()
{
	tipoBloco = [0];
	escolheLvl();
	
	for (i = 0; i < 20; i++)
	{
		global.tabuleiro[i].ligado = false;
		global.tabuleiro[i].tipoBloco = tipoBloco[i];
		if (tipoBloco[i] = 1) global.tabuleiro[i].image_angle = choose(0, 90);
		else if (tipoBloco[i] = 2) global.tabuleiro[i].image_angle = choose(0, 90, 180, 270);
		
	}
	

}

//Armazenamento de levels 
escolheLvl = function()
{
	switch(levelEnrg)
	{
		case 1:
			tipoBloco = [3,0,0,0,2,1,2,0,0,0,1,0,0,0,1,0,0,0,2,1];
			break;
		case 2:
			 tipoBloco = [0,1,1,2,0,0,0,1,0,2,1,2,2,1,0,0,0,2,1,1];
			break;
		case 3:

			 tipoBloco = [0,1,2,0,0,0,2,2,2,1,1,2,1,0,0,0,2,1,1,1];
			break;
		case 4:
			 tipoBloco = [0,2,0,0,0,2,2,0,2,1,2,0,1,0,0,0,2,1,1,1];
			break;
		case 5:
			 tipoBloco = [0,1,1,2,2,2,0,1,1,2,1,2,1,0,0,0,2,1,1,1];
			break;
	}
}

//Reseto blocos e fluxos existentes
limpaLevel = function()
{
	if (instance_exists(obj_fluxo)) instance_destroy(obj_fluxo, all);
	for (i = 0; i < 20; i++)
	{
		global.tabuleiro[i].ligado		= false;	
		global.tabuleiro[i].blocoOrdem  = 0;
		global.tabuleiro[i].meuFluxo    = 0;
		global.tabuleiro[i].fornecedor  = 0;

	}
}

//Checo se o level está completo
checaLvl = function()
{
	if (global.tabuleiro[19].ligado = true)
	{
		obj_energy_next.bloqueado = false;	
	}
}