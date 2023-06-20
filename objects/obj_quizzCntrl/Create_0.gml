/// @description Inserir descrição aqui
randomize();

//Variáveis de controle
prgntAtiva = false;
pontos = 0;
global.respCntrl = false;
quizzEnd = false;
listaCntrl = false;
qtdPrgnt = 0;

quizInd = 0;
//Textos
pergunta = "";
resp1    = "";
resp2	 = "";
resp3	 = "";
resp4	 = "";


// Controle de Dialogo
if (global.quizzCmpltd = false)
{
	criaDialogo("rm_quiz1");
}

//Iniciando lista de perguntas

criaLista = function()
{
	lista_prgnts = ds_list_create();

	// Adiciona os valores de 1 a 5 à lista 
	for (var i = 1; i <= 16; i++) { ds_list_add(lista_prgnts, i); }
	ds_list_shuffle(lista_prgnts);
}



//Base de perguntas e respostas
escPrgnt = function()
{
	if (quizInd < 5) 
	{
		var _valor = ds_list_find_value(lista_prgnts, 0);

	}
	else quizzEnd = true; 
	
	
	if (!quizzEnd)
	{
		quizInd++;
		ds_list_delete(lista_prgnts, 0);
		switch(_valor)
		{
			case 1:
				pergunta = "O que é energia renovável?";
				resp1    = "Energia gerada a partir de combustíveis fósseis.";
				resp2	 = "Energia gerada a partir de fontes inesgotáveis, como o sol, o vento e a água.";
				resp3	 = "Energia gerada a partir de reações nucleares.";
				resp4	 = "Energia gerada a partir da queima de resíduos.";
				respCrt  = 2;
			break;
			case 2:
				pergunta = "O que é a pegada de carbono?";
				resp1    = "Impressão digital de uma pessoa relacionada à sustentabilidade";
				resp2	 = "Medida da quantidade de carbono liberada na atmosfera por uma atividade humana";
				resp3	 = "Tamanho físico de um carbono";
				resp4	 = "Unidade de medida de energia limpa";
				respCrt  = 2;
			break;	
			case 3:
				pergunta = "Qual é a importância da preservação das florestas para a sustentabilidade?";
				resp1    = "As florestas são importantes para a manutenção do equilíbrio do clima e a conservação da biodiversidade";
				resp2	 = "As florestas não têm relação direta com a sustentabilidade";
				resp3	 = "As florestas são importantes apenas para a indústria madeireira";
				resp4	 = "As florestas são importantes para aumentar a poluição do ar";
				respCrt  = 1;
			break;
			case 4:
				pergunta = "Qual é o objetivo principal da reciclagem?";
				resp1    = "Reduzir o consumo de energia";
				resp2	 = "Maximizar os lucros das empresas de reciclagem";
				resp3	 = "Diminuir a poluição do ar";
				resp4	 = "Reduzir a quantidade de resíduos e promover a reutilização de materiais";
				respCrt  = 4;
			break;
			case 5:
			      pergunta= "Qual é o principal objetivo da sustentabilidade ambiental?";
			      resp1= "Preservar os recursos naturais para as gerações futuras.";
			      resp2= "Maximizar os lucros das empresas.";
			      resp3= "Aumentar o consumo de energia.";
			      resp4= "Reduzir a quantidade de lixo produzido.";
			      respCrt= 1;
			      break;
			case 6:
			    pergunta = "O que significa o conceito dos 3Rs da sustentabilidade?";
			    resp1 = "Reciclar, Reparar, Reutilizar.";
			    resp2 = "Reduzir, Reciclar, Replantar.";
			    resp3 = "Respeitar, Reutilizar, Recuperar.";
			    resp4 = "Reduzir, Reciclar, Reutilizar.";
			    respCrt = 4;
			    break;
			case 7:
			    pergunta = "Qual é a forma correta de descartar uma lâmpada fluorescente usada?";
			    resp1 = "Jogá-la no lixo comum.";
			    resp2 = "Colocá-la no recipiente de vidro reciclável.";
			    resp3 = "Enterrá-la no jardim.";
			    resp4 = "Levá-la a um ponto de coleta específico para descarte adequado.";
			    respCrt = 4;
			    break;
			case 8:
			    pergunta = "O que são cidades inteligentes?";
			    resp1 = "Cidades com muitos arranha-céus.";
			    resp2 = "Cidades com alta concentração de indústrias.";
			    resp3 = "Cidades que utilizam tecnologia para melhorar a qualidade de vida dos moradores e otimizar o uso de recursos.";
			    resp4 = "Cidades com um grande número de habitantes.";
			    respCrt = 3;
			    break;
			case 9:
				pergunta = "Qual é a principal vantagem da coleta seletiva de lixo?";
				resp1 = "Redução da quantidade de lixo produzido.";
				resp2 = "Aumento dos lucros das empresas de reciclagem.";
				resp3 = "Melhoria na qualidade do ar.";
				resp4 = "Possibilidade de reciclar materiais e reduzir a contaminação do meio ambiente.";
				respCrt = 4;
				break;
			case 10:
			    pergunta = "Como as cidades inteligentes podem contribuir para a redução do consumo de energia?";
			    resp1 = "Aumentando o uso de dispositivos eletrônicos.";
			    resp2 = "Implementando sistemas de iluminação pública ineficientes.";
			    resp3 = "Utilizando sensores para monitorar e otimizar o uso de energia em edifícios e infraestruturas.";
			    resp4 = "Aumentando a produção de energia a partir de combustíveis fósseis.";
			    respCrt = 3;
			    break;
			case 11:
				pergunta = "Qual das seguintes opções é considerada uma fonte de energia renovável?";
				resp1 = "Carvão mineral";
				resp2 = "Petróleo";
				resp3 = "Gás natural";
				resp4 = "Energia solar";
				respCrt = 4;
				break;
			case 12:
			    pergunta = "Qual é uma das formas de conservação da água em ambientes urbanos?";
			    resp1 = "Aumentar o uso de fontes não renováveis";
			    resp2 = "Desperdiçar água tratada";
			    resp3 = "Utilizar dispositivos economizadores de água";
			    resp4 = "Ignorar vazamentos de água";
			    respCrt = 3;
			    break;
			case 13:
			    pergunta = "O que é a compostagem?";
			    resp1 = "Processo de reciclagem de vidros";
			    resp2 = "Método para armazenar produtos eletrônicos antigos";
			    resp3 = "Técnica de decomposição de resíduos orgânicos para produção de adubo";
			    resp4 = "Processo de recuperação de metais de sucata";
			    respCrt = 3;
			    break;
			case 14:
			    pergunta = "O que é eficiência energética?";
			    resp1 = "Uso intenso de energia para maximizar a produção";
			    resp2 = "Aproveitamento máximo de recursos naturais";
			    resp3 = "Uso racional de energia para reduzir o consumo e os desperdícios";
			    resp4 = "Desenvolvimento de tecnologias que não necessitam de energia";
			    respCrt = 3;
			    break;
			case 15:
			    pergunta = "O que são os Objetivos de Desenvolvimento Sustentável (ODS)?";
			    resp1 = "Metas estabelecidas pela ONU para o desenvolvimento sustentável até 2030";
			    resp2 = "Estratégias para maximizar o consumo de recursos naturais";
			    resp3 = "Normas de sustentabilidade aplicadas somente em países desenvolvidos";
			    resp4 = "Diretrizes para aumentar a produção de lixo eletrônico";
			    respCrt = 1;
			    break;
			case 16:
			    pergunta = "Qual é a importância da educação ambiental para a sustentabilidade?";
			    resp1 = "Conscientização sobre a importância da reciclagem";
			    resp2 = "Desenvolvimento de novas tecnologias verdes";
			    resp3 = "Promoção de eventos sustentáveis";
			    resp4 = "Capacitação da população para tomar decisões mais sustentáveis no dia a dia";
			    respCrt = 4;
			    break;

		}
	}
}

//Criar pergunta e respostas
criaPrgnt = function()
{
	//debug

	if (prgntAtiva = false && !quizzEnd)
	{
		escPrgnt();
		if (!quizzEnd)
		{
			qtdPrgnt++;
			var _prgnt = instance_create_layer(160, 32, "Instances", obj_prgnt);	
			_prgnt.text[0] = pergunta;
		
			var _resp1 = instance_create_layer(159, 380, "Instances", obj_resp);
			_resp1.text[0] = resp1;
		
			var _resp2 = instance_create_layer(658, 380, "Instances", obj_resp);
			_resp2.text[0] = resp2;
		
			var _resp3 = instance_create_layer(159, 544, "Instances", obj_resp);
			_resp3.text[0] = resp3;
		
			var _resp4 = instance_create_layer(658, 544, "Instances", obj_resp);
			_resp4.text[0] = resp4;

			switch (respCrt)
			{
				case 1:
					_resp1.resCerta = true;
				break;
			
				case 2:
					_resp2.resCerta = true;
				break;
			
				case 3:
					_resp3.resCerta = true;
				break;
			
				case 4:
					_resp4.resCerta = true;
				break;
			}
		
			prgntAtiva = true;
		}
		else 
		{
			if (global.quizzRecorde < pontos) global.quizzRecorde = pontos;
			if (pontos < 3)	criaDialogo("rm_quizFinal2");
			else criaDialogo("rm_quizFinal");

		}
	}
}