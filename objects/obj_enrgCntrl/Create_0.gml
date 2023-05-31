/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
randomize();
global.tabuleiro = array_create(20);
tabCntrl  = false;
margem = 5;
i = 0;
criaTabuleiro = function()
{	
	var _jumpX = 0;
	var _xx = 448;
	var _yy = 96;
	
	for (i = 0; i < 20; i++)
	{
	
		global.tabuleiro[i] = instance_create_layer(_xx, _yy, layer, obj_bloco);
		global.tabuleiro[i].sprite = spr_lateral;
		global.tabuleiro[i].tipoBloco = 2;
		
		if (_jumpX = 3 )
		{
			_xx = 448;
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
	var angBloco  = [0,180,0,0,0,0,180,0,270,90,90,0,0,270,90,90,0,90,0,0];
	var tipoBloco = [0,2,0,3,0,2,2,0,2,1,2,0,1,2,1,1,2,2,3,3];
	var ordBloco  = [0,1,5,6,10,9,8,12,16,17,13,14,15]
	
	
	for (i = 0; i < 20; i++)
	{
		global.tabuleiro[i].anguloCrt = angBloco[i];
		global.tabuleiro[i].tipoBloco = tipoBloco[i];
//		global.tabuleiro[i].blocoAtual  = i;
		if (tipoBloco[i] = 1) global.tabuleiro[i].image_angle = choose(0, 90);
		else if (tipoBloco[i] = 2) global.tabuleiro[i].image_angle = choose(0, 90, 180, 270);
		
		global.tabuleiro[i].blocoOrdem = ordBloco;
		
	}

}

