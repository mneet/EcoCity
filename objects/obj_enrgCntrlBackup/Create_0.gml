/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
randomize();
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

criaLevel = function()
{
	angBloco  = [0];
	tipoBloco = [0];
	ordBloco  = [0];
	escolheLvl();
	
	for (i = 0; i < 20; i++)
	{
		global.tabuleiro[i].ligado = false;
		global.tabuleiro[i].anguloCrt = angBloco[i];
		global.tabuleiro[i].tipoBloco = tipoBloco[i];
//		global.tabuleiro[i].blocoAtual  = i;
		if (tipoBloco[i] = 1) global.tabuleiro[i].image_angle = choose(0, 90);
		else if (tipoBloco[i] = 2) global.tabuleiro[i].image_angle = choose(0, 90, 180, 270);
		
		global.tabuleiro[i].blocoOrdem = ordBloco;
		global.tabuleiro[i].checaOrdem();
	}
	

}

escolheLvl = function()
{
	switch(levelEnrg)
	{
		case 1:
			angBloco  = [0,0,0,0,0,90,180,0,0,0,0,0,0,0,0,0,0,0,0,90];
			tipoBloco = [3,0,0,0,2,1,2,0,0,0,1,0,0,0,1,0,0,0,2,1];
			ordBloco  = [0,4,5,6,10,14,18,19];
			break;
		case 2:
			 angBloco  = [0,90,90,180,0,0,0,0,0,270,90,90,0,0,0,0,0,0,90,90];
			 tipoBloco = [0,1,1,2,0,0,0,1,0,2,1,2,20,1,0,0,0,2,1,1];
			 ordBloco  = [0,1,2,3,7,11,10,9,13,17,18,19];
			break;
		case 3:
			 angBloco  = [0,90,180,0,0,0,0,180,270,90,90,90,0,0,0,0,0,90,90,90];
			 tipoBloco = [0,1,2,0,0,0,2,2,2,1,1,2,1,0,0,0,2,1,1,1];
			 ordBloco  = [0,1,2,6,7,11,10,9,8,12,16,17,18,19];
			break;
		case 4:
			 angBloco  = [0,180,0,0,0,0,180,0,270,90,90,0,0,0,0,0,0,90,90,90];
			 tipoBloco = [0,2,0,0,0,2,2,0,2,1,2,0,1,0,0,0,2,1,1,1];
			 ordBloco  = [0,1,5,6,10,9,8,12,16,17,18,19];
			break;
		case 5:
			 angBloco  = [0,90,90,180,270,180,0,0,0,0,90,90,0,0,0,0,0,90,90,90];
			 tipoBloco = [0,1,1,2,2,2,0,1,1,2,1,2,1,0,0,0,2,1,1,1];
			 ordBloco  = [0,1,2,3,7,11,10,9,5,4,8,12,16,17,18,19];
			break;
	}
}

