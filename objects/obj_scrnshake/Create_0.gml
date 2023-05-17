/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor



//Método
shake_screen = function()
{
	//Aplicando o efeito
	view_xport[0] = irandom_range(global.shake, -global.shake);
	view_yport[0] = irandom_range(global.shake, -global.shake);

	
	if (global.shake < 1) global.shake = 0;
	else global.shake *= 0.9;
}