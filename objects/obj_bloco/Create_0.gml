/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

sprite	    = 0;
anguloCrt	= 0;
blocoOrdem  = 0;



// 0 = Fixo || 1 = Direto || 2 = Lateral
tipoBloco = 0;

checaOrdem = function()
{
	var todosCorretos = true;
	var iSize = array_length(blocoOrdem);
	for (var i = 1; i < iSize; i++)
	{
		var checaBloco =  (global.tabuleiro[blocoOrdem[i]].image_angle = global.tabuleiro[blocoOrdem[i]].anguloCrt);
		if (checaBloco && todosCorretos) global.tabuleiro[blocoOrdem[i]].image_blend = c_aqua;
		else 
		{
			global.tabuleiro[blocoOrdem[i]].image_blend = -1;
			todosCorretos = false;

		}

	}

}
