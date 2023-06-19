//Dialogos usados pelo jogo

//Dialogos iniciais de cada room

function criaDialogo(_nomeDialogo)
{
	var _dialogo = instance_create_layer(0, 0, "Dialog", obj_dialog);
	with(_dialogo)
	{
		global.dialogoCntrl  = true;
		text_width = 870
		text_x = 270;
		text_y = 480;
		
		switch (_nomeDialogo){
			case "rm_menu1":
				rmOrigem = "Menu";
				sprite_index = spr_chatAna;
				texto[0] = "Esse é um texto para testar a quebra de linha dos textos feitos no objeto que tem o proposito de criar textos e quebrar a linha quando necessário";
				texto[1] = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor. ";
				texto[2] = "magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.";
				texto[3] = "I talk too much!";
				text_last = 3;
				break;
			case "rm_rec1":
				rmOrigem = "Rec";
				sprite_index = spr_chatEduardo;
				texto[0] = "Esse é um texto para testar a quebra de linha dos textos feitos no objeto que tem o proposito de criar textos e quebrar a linha quando necessário";
				texto[1] = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor. ";
				texto[2] = "magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.";
				texto[3] = "I talk too much!";
				text_last = 3;
				break;
			case "rm_recGameFinal":
				rmOrigem = "GameFinal";
				sprite_index = spr_chatEduardo
				texto[0] = "Esse é um texto para testar a quebra de linha dos textos feitos no objeto que tem o proposito de criar textos e quebrar a linha quando necessário";
				texto[1] = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor. ";
				texto[2] = "magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.";
				texto[3] = "I talk too much!";
				text_last = 3;
				break;
			case "rm_energy1":
				rmOrigem = "Energia";
				sprite_index = spr_chatPedro;
				texto[0] = "Esse é um texto para testar a quebra de linha dos textos feitos no objeto que tem o proposito de criar textos e quebrar a linha quando necessário";
				texto[1] = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor. ";
				texto[2] = "magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.";
				texto[3] = "I talk too much!";
				text_last = 3;
				break;
			case "rm_energy2":
				rmOrigem = "EnergiaGame";
				sprite_index = spr_chatPedro;
				texto[0] = "Esse é um texto para testar a quebra de linha dos textos feitos no objeto que tem o proposito de criar textos e quebrar a linha quando necessário";
				texto[1] = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor. ";
				texto[2] = "magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.";
				texto[3] = "I talk too much!";
				text_last = 3;
				break;
			case "rm_energyGameFinal":
				rmOrigem = "GameFinal";
				sprite_index = spr_chatPedro;
				texto[0] = "Esse é um texto para testar a quebra de linha dos textos feitos no objeto que tem o proposito de criar textos e quebrar a linha quando necessário";
				texto[1] = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor. ";
				texto[2] = "magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.";
				texto[3] = "I talk too much!";
				text_last = 3;
				break;
			case "rm_quizz1":
				rmOrigem = "Quizz";
				sprite_index = spr_chatMateus;
				texto[0] = "Esse é um texto para testar a quebra de linha dos textos feitos no objeto que tem o proposito de criar textos e quebrar a linha quando necessário";
				texto[1] = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor. ";
				texto[2] = "magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.";
				texto[3] = "I talk too much!";
				text_last = 3;
				break;
			case "rm_quizzFinal":
				rmOrigem = "GameFinal";
				sprite_index = spr_chatMateus;
				texto[0] = "Esse é um texto para testar a quebra de linha dos textos feitos no objeto que tem o proposito de criar textos e quebrar a linha quando necessário";
				texto[1] = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor. ";
				texto[2] = "magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.";
				texto[3] = "I talk too much!";
				text_last = 3;
				break;
		}
	}	
	
	}
