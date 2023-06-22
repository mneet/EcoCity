/// @description Iniciando variáveis e funções dos blocos de energia

sprite	    = 0;
ligado      = false;
meuFluxo    = false;
fornecedor  = 0;

// 0 = Fixo || 1 = Direto || 2 = Lateral || 4 = random
tipoBloco = 0;


// Sistema de checagem de fluxo, funciona através de colisão com outro objeto invisivel, obj_fluxo, que é criado quando o bloco esta ligado.
checaFluxo = function()
{	
	if (!ligado) //Checo meu estado "ligado" para criar ou destruir fluxo
	{
		if (meuFluxo != 0) 
		{
			instance_destroy(meuFluxo);
			meuFluxo = 0;
			fornecedor = 0;
		}		
	}
	else 
	{	
		if (meuFluxo = 0)
		{
			var _fluxo = instance_create_layer(x,y,"Fluxos",obj_fluxo);
			meuFluxo = _fluxo.id;	
		}
		if (tipoBloco = 1) meuFluxo.sprite_index = spr_fluxoR
		else if (tipoBloco = 2) meuFluxo.sprite_index = spr_fluxoL;
		meuFluxo.image_angle = image_angle;
	}
	
	//Checa colisão com fornecedor
	if (fornecedor != 0)
	{
		if (!place_meeting(x,y,fornecedor)){
			if (instance_exists(meuFluxo)) instance_destroy(meuFluxo);
			ligado = false;
			meuFluxo = 0;
			fornecedor = 0;
		}
	}
}




/*
//Sistema de checagem antigo
//Limitado, só consegue checar o fluxo de energia na ordem correta predeterminada, caso o fluxo saia do caminho correto ele não o considerava
//Estou deixando ele no código apenas para registro
//Ele funciona fazendo um loop entre os blocos pertecentes a ordem correta do caminho e checando se estãp no angulo correto e se os anteriores também estão

checaOrdem = function()
{
	
	var todosCorretos = true;
	var iSize = array_length(blocoOrdem);
	for (var i = 1; i < iSize; i++)
	{
		var checaBloco =  (global.tabuleiro[blocoOrdem[i]].image_angle = global.tabuleiro[blocoOrdem[i]].anguloCrt);
		if (checaBloco && todosCorretos) global.tabuleiro[blocoOrdem[i]].ligado = true;
		else 
		{
			global.tabuleiro[blocoOrdem[i]].ligado = false;
			todosCorretos = false;

		}
	}
	

}
*/
