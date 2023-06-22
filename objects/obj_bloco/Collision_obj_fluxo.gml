/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

//Checo colisão com obj_fluxo e atribuo valores as variaveis
if (!ligado){
	if (other.id != meuFluxo){
		fornecedor = other.id;
		ligado = true;
	}
}
