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
				texto[0] = "Olá, pessoal! Sou a Ana, a curiosa e estudiosa do grupo. Estou aqui para dar início a essa incrível jornada de aprendizado e diversão!";
				texto[1] = "Bem-vindos ao nosso jogo cheio de desafios sobre curiosidades, reciclagem, energia e cidades inteligentes. Tenho certeza de que vocês vão adorar explorar cada detalhe e se tornar verdadeiros especialistas nesses assuntos.";
				texto[2] = "Antes de começarmos, gostaria de fazer uma sugestão: que tal deixarmos o quiz para o final? Assim, vocês terão a oportunidade de conhecer todas as curiosidades que se escondem por trás dos sinais de interrogação espalhados pelo jogo.";
				texto[3] = "Esses sinais de interrogação são um convite para descobrir fatos interessantes e curiosidades sobre os temas abordados no jogo. Basta clicar neles para desvendar informações surpreendentes e ampliar ainda mais o conhecimento.";
				texto[4] = "Ao explorar as curiosidades, vocês estarão se preparando para o desafio final: o quiz. Nesse momento, todas as informações que vocês adquiriram ao longo do jogo serão testadas. Tenho certeza de que vocês se sentirão mais confiantes e preparados para responder corretamente.";
				texto[5] = "Então, vamos começar essa jornada de conhecimento! Cliquem nos sinais de interrogação para descobrir curiosidades fascinantes e não deixem de aproveitar ao máximo cada desafio. Quando se sentirem prontos, o quiz estará lá, aguardando vocês no final!";
				texto[6] = "Divirtam-se, aprendam e sejam curiosos! Estou animada para acompanhá-los nessa incrível aventura. Vamos lá!";
				text_last = 6;
				break;
			case "rm_rec1":
				rmOrigem = "Rec";
				sprite_index = spr_chatEduardo;
				texto[0] = "Olá! Sou Eduardo e estou aqui para falar sobre a coleta seletiva, um passo importante para cuidar do nosso planeta. A coleta seletiva é um processo de separação dos resíduos de acordo com suas características, facilitando a reciclagem e reduzindo o impacto ambiental.";
				texto[1] = "Na coleta seletiva, os lixos são separados em diferentes categorias, como papel, plástico, vidro e metal. Cada um desses materiais possui propriedades únicas e pode ser reciclado de maneira adequada, evitando o acúmulo em aterros sanitários e reduzindo a extração de recursos naturais.";
				texto[2] = "Ao separar corretamente os lixos, contribuímos para a preservação do meio ambiente e a economia de energia e recursos. A reciclagem desses materiais pode transformá-los em novos produtos, reduzindo a necessidade de produção.";
				text_last = 2;
				break;
			case "rm_recG":
				rmOrigem = "GameInicial";
				sprite_index = spr_chatEduardo;
				texto[0] = "Nossa área de recreação favorita está uma bagunça depois de um dia de brincadeiras das crianças. Agora, temos lixo espalhado por todo o lugar. Mas não se preocupem, com a sua ajuda, podemos resolver isso!";
				texto[1] = "Preciso que vocês me auxiliem a separar corretamente o lixo. Ao arrastar cada item para a lixeira correta, estaremos dando um passo importante para manter nosso espaço limpo e preservar o meio ambiente. Vamos trabalhar juntos para fazer dessa bagunça um lugar limpo e agradável novamente!";
				text_last = 1;
				break;
			case "rm_recGameFinal":
				rmOrigem = "GameFinal";
				sprite_index = spr_chatEduardo
				texto[0] = "Parabéns, jogador! Você fez um excelente trabalho na separação dos lixos e na colocação de cada um deles nas lixeiras corretas. Sua habilidade em identificar os resíduos e tomar a decisão adequada foi impressionante!";
				texto[1] = "Com essa ação consciente, você está contribuindo para um mundo mais limpo e sustentável. É importante lembrar que a correta separação dos lixos é essencial para facilitar o processo de reciclagem e evitar impactos negativos ao meio ambiente.";
				texto[2] = "Agora, vamos conferir sua pontuação. Você acumulou " + string(obj_rec_control.pontos) + " pontos! Fantástico! Continue assim e você alcançará resultados ainda melhores. Seu recorde atual é de " + string(global.recRecorde) + " pontos!";
				texto[3] = "Lembre-se de que a coleta seletiva é um hábito importante no nosso dia a dia. Cada pequena ação conta e faz a diferença. Continue praticando e incentivando os outros a fazerem o mesmo.";
				texto[4] = "Estou muito orgulhoso do seu desempenho e comprometimento com a reciclagem. Continue jogando e explorando novas formas de cuidar do nosso planeta. Juntos, podemos fazer a diferença!";
				text_last = 4;
				break;
			case "rm_energy1":
				rmOrigem = "Energia";
				sprite_index = spr_chatPedro;
				texto[0] = "Olá! Sou Pedro, um engenheiro eletricista apaixonado por energias renováveis e estou aqui para falar sobre a importância da energia solar no nosso dia a dia.";
				texto[1] = "A energia solar é uma fonte limpa, renovável e inesgotável. Ela é obtida através da captação da luz do sol e sua conversão em eletricidade. Ao utilizar a energia solar, reduzimos nossa dependência de fontes de energia não renováveis, como os combustíveis fósseis, que causam poluição e contribuem para o aquecimento global.";
				texto[2] = "Uma das grandes vantagens da energia solar é que ela não emite gases de efeito estufa durante sua produção, tornando-a uma opção sustentável e amigável ao meio ambiente. Além disso, a instalação de painéis solares contribui para a geração distribuída de energia, descentralizando sua produção e aumentando a resiliência do sistema elétrico.";
				texto[3] = "Venha comigo nessa eletrizante jornada.";
				text_last = 3;
				break;
			case "rm_energy2":
				rmOrigem = "EnergiaGame";
				sprite_index = spr_chatPedro;
				texto[0] = "Oh não! Os cabos de energia estão completamente desorganizados! Preciso da ajuda de vocês para ligá-los corretamente e restabelecer o fornecimento de energia de forma eficiente.";
				texto[1] = "Neste minigame, vocês serão desafiados a reconectar o fluxo de energia de tipos. Ligando corretamente os cabos, garantimos que a eletricidade flua adequadamente e que cada dispositivo receba a energia necessária para funcionar. Isso é fundamental para manter tudo em ordem e evitar falhas no sistema elétrico.";
				texto[2] = "Lembre-se de prestar atenção às direções e aos formatos dos cabos. Correspondê-los corretamente é essencial para o sucesso nesta tarefa. À medida que vocês forem conectando os cabos corretamente, verão ofluxo de energia acendendo e funcionando novamente.";
				texto[3] = "Vamos trabalhar em equipe para organizar esses cabos de energia de forma eficiente e restaurar o fluxo adequado. Vamos mostrar que somos especialistas em eletricidade e garantir que tudo funcione perfeitamente novamente!";
				text_last = 3;
				break;
			case "rm_energyGameFinal":
				rmOrigem = "GameFinal";
				sprite_index = spr_chatPedro;
				texto[0] = "Ufa! O fluxo de energia foi reestabelecido e está tudo funcionando novamente.";
				texto[1] = "Obrigado pela ajuda, agora é só continuar estudando sobre a energia solar e como podemos tornar nossa energia cada vez mais limpa."; 
				text_last = 1;
				break;
			case "rm_quiz1":
				rmOrigem = "quiz";
				sprite_index = spr_chatMateus;
				texto[0] = "Olá pessoal! Eu sou Mateus, o irmão da Ana, e estou aqui para desafiar vocês com um teste de conhecimento super divertido! Vamos ver o quanto vocês aprenderam ao longo do jogo.";
				texto[1] = "O teste consiste em cinco questões sobre diversos temas relacionados ao nosso jogo. Cada pergunta terá quatro alternativas, e vocês deverão selecionar a resposta correta. Não se preocupem, todas as respostas estão relacionadas ao que exploramos até agora, então é só prestar atenção!";
				texto[2] = "Ao final do teste, vocês receberão uma pontuação baseada nas respostas corretas. Essa pontuação mostrará o quanto vocês aprenderam e o quanto estão se tornando verdadeiros especialistas.";
				texto[3] = "Estão prontos para começar? Lembrem-se de ler cada pergunta atentamente e escolher a alternativa que considerem correta. Vamos testar todo o conhecimento adquirido até agora!";
				text_last = 3;
				break;
			case "rm_quizFinal":
				rmOrigem = "GameFinal";
				sprite_index = spr_chatMateus;
				texto[0] = "Parabéns! Vocês concluíram o teste de conhecimento com sucesso e mostraram um ótimo desempenho. Fiquei impressionado com o conhecimento que vocês adquiriram durante o jogo!";
				texto[1] = "Agora, vamos conferir os resultados. Analisando suas respostas, vocês alcançaram um total de " + string(obj_quizzCntrl.pontos) + " pontos! Incrível! Isso demonstra o quanto vocês se dedicaram em aprender e absorver as informações apresentadas ao longo do jogo.";
				texto[2] = "Cada resposta correta reflete o seu comprometimento em se tornar especialistas nesses assuntos. Tenho certeza de que vocês se tornaram verdadeiros campeões do conhecimento! O seu recorde atual é de " + string(global.quizzRecorde) + " pontos.";
				texto[3] = "Lembrando que o aprendizado é um processo contínuo, e mesmo que tenham alcançado uma pontuação excelente, sempre há espaço para aprender ainda mais. Continuem explorando, descobrindo novos fatos e ampliando seus horizontes.";
				texto[4] = "Vocês estão no caminho certo para se tornarem defensores do meio ambiente e cidadãos conscientes. Continuem praticando e compartilhando seus conhecimentos com os outros. Juntos, podemos criar um futuro mais sustentável!";
				text_last = 4;
				break;
			case "rm_quizFinal2":
				rmOrigem = "GameFinal";
				sprite_index = spr_chatMateus;
				texto[0] = "Parabéns! Vocês concluíram o teste de conhecimento com sucesso!";
				texto[1] = "Agora, vamos conferir os resultados. Analisando suas respostas, vocês alcançaram um total de " + string(obj_quizzCntrl.pontos) + " pontos! Valeu a tentativa, que tal dar uma olhada novamente nas curiosidades espalhadas pelos outros mapas?";
				texto[2] = "Cada resposta correta reflete o seu comprometimento em se tornar especialistas nesses assuntos. Tenho certeza de que vocês se tornaram verdadeiros campeões do conhecimento! O seu recorde atual é de " + string(global.quizzRecorde) + " pontos.";
				texto[3] = "Lembrando que o aprendizado é um processo contínuo, e mesmo que tenham alcançado uma pontuação excelente, sempre há espaço para aprender ainda mais. Continuem explorando, descobrindo novos fatos e ampliando seus horizontes.";
				texto[4] = "Vocês estão no caminho certo para se tornarem defensores do meio ambiente e cidadãos conscientes. Continuem praticando e compartilhando seus conhecimentos com os outros. Juntos, podemos criar um futuro mais sustentável!";
				text_last = 4;
				break;
			case "rm_recCuriosidade1":
				rmOrigem = "Curiosidade";
				sprite_index = spr_chatAna;
				texto[0] = "Oi, pessoal! tenho uma curiosidade interessante sobre a coleta seletiva para compartilhar com vocês. Sabiam que, além de ajudar a preservar o meio ambiente, a coleta seletiva também tem um impacto econômico positivo?";
				texto[1] = "Quando separamos corretamente os resíduos recicláveis, como papel, plástico, vidro e metal, estamos facilitando o processo de reciclagem. Isso significa que esses materiais podem ser transformados em novos produtos, evitando a necessidade de extrair recursos naturais e produzir a partir do zero.";
				texto[2] = "A coleta seletiva faz parte de um conceito maior chamado 'Os 3 Rs': Reduzir, Reutilizar e Reciclar. Esses princípios visam promover a conscientização sobre a importância de reduzir o consumo, reutilizar itens sempre que possível e reciclar para minimizar o desperdício e proteger o meio ambiente.";
				texto[3] = "Agora que vocês sabem dessa curiosidade, vamos colocar em prática os 3 Rs e fazer nossa parte na coleta seletiva. Juntos, podemos construir um futuro mais sustentável e econômico. Vamos explorar mais curiosidades juntos ao longo do jogo!";
				text_last = 3;
				break;
			case "rm_recCuriosidade2":
				rmOrigem = "Curiosidade";
				sprite_index = spr_chatAna;
				texto[0] = "Oi, pessoal! Vocês sabem o que é coleta seletiva de lixo? É um processo que consiste na separação e recolhimento dos resíduos de acordo com sua origem e tipo. Assim, os materiais que podem ser reciclados, como papel, plástico, vidro e metal, são separados do lixo orgânico, como restos de alimentos.";
				texto[1] = "A coleta seletiva é muito importante para o meio ambiente e para a nossa saúde, pois evita a contaminação do solo e da água, reduz o volume de lixo nos aterros sanitários, economiza recursos naturais e energia, gera renda para os catadores e cooperativas de reciclagem e diminui os custos da limpeza pública.";
				text_last = 1;
				break;
			case "rm_recCuriosidade3":
				rmOrigem = "Curiosidade";
				sprite_index = spr_chatAna;
				texto[0] = "Salve, pessoal! Vocês sabem o que é a compostagem? A compostagem é um método de reciclagem e tratamento dos resíduos orgânicos, como restos de alimentos, cascas de frutas, folhas secas e borra de café. Ela consiste em transformar esses resíduos em húmus, um adubo natural muito rico em nutrientes e fértil.";
				texto[1] = "A compostagem é feita por micro-organismos, como bactérias e fungos, que degradam a matéria orgânica em condições controladas de temperatura, umidade e aeração. O processo pode ser acelerado com o uso de minhocas, que também produzem húmus. A compostagem traz muitos benefícios para o meio ambiente e para a nossa saúde.";
				texto[2] = "Ela reduz a quantidade de lixo orgânico que iria para os aterros sanitários, evitando a emissão de gases de efeito estufa e o mau cheiro. Ela também produz um adubo natural que pode ser usado na agricultura, na jardinagem e na horta doméstica, melhorando a qualidade do solo e das plantas.";
				texto[3] = "Além disso, ela pode ser feita em casa, com uma composteira doméstica, que é um recipiente com três caixas onde se coloca os resíduos orgânicos e se recolhe o húmus. Vamos fazer a nossa parte e praticar a compostagem. Assim, estaremos reciclando os resíduos orgânicos e produzindo um adubo natural para as nossas plantas.";
				text_last = 3;
				break;
			case "rm_energyCuriosidade1":
				rmOrigem = "Curiosidade";
				sprite_index = spr_chatAna;
				texto[0] = "Oi, pessoal! Vamos explorar uma curiosidade incrível sobre energia solar e aprender sobre o descarte adequado de lâmpadas fluorescentes?";
				texto[1] = "Vocês sabiam que a energia solar é uma fonte inesgotável de energia limpa? Os painéis solares captam a luz do sol e a transformam em eletricidade sem emitir poluentes ou gases de efeito estufa. Incrível, não é?";
				texto[2] = "Agora, sobre o descarte de lâmpadas fluorescentes. Elas são eficientes, mas contêm mercúrio, uma substância prejudicial ao meio ambiente. É importante descartá-las corretamente!";
				texto[3] = "Lembrem-se: as lâmpadas fluorescentes devem ser levadas a pontos de coleta específicos, onde são tratadas adequadamente para minimizar os impactos ambientais.";
				texto[4] = "Vamos aprender enquanto nos divertimos e nos tornar especialistas em energia sustentável e descarte responsável de resíduos. Tenho certeza de que juntos vamos criar um futuro mais brilhante e consciente!";
				text_last = 4;
				break;
			case "rm_energyCuriosidade2":
				rmOrigem = "Curiosidade";
				sprite_index = spr_chatAna;
				texto[0] = "Oi, pessoal! Vocês sabem o que é energia renovável? É a energia que vem de fontes naturais que se regeneram continuamente, como o sol, o vento, a água, as marés e o calor da terra. A energia renovável é considerada sustentável, pois não emite poluentes ou gases de efeito estufa, que causam o aquecimento global.";
				texto[1] = "Além disso, a energia renovável ajuda a preservar os recursos naturais não renováveis, como o carvão, o petróleo e o gás natural, que são finitos e prejudiciais ao meio ambiente.";
				texto[2] = "No Brasil, a matriz energética é composta por cerca de 45% de fontes renováveis, sendo a principal delas a hidrelétrica, que usa a força da água para gerar eletricidade. Outras fontes renováveis que estão crescendo no país são a eólica, que usa o vento; a solar, que usa a luz do sol; e a biomassa, que usa matéria orgânica.";
				text_last = 2;
				break;
			case "rm_energyCuriosidade3":
				rmOrigem = "Curiosidade";
				sprite_index = spr_chatAna;
				texto[0] = "Fala, pessoal! Vocês sabem o que é eficiência energética? Eficiência energética é o uso racional de energia para reduzir o consumo e os desperdícios. Isso significa produzir a mesma quantidade de energia com menos recursos naturais ou consumir menos energia sem afetar os resultados.";
				texto[1] = "A eficiência energética traz muitos benefícios para o meio ambiente e para a economia. Ela ajuda a preservar os recursos naturais não renováveis, como o petróleo e o gás natural, que são finitos e poluentes. Ela também contribui para a redução das emissões de gases de efeito estufa, que causam o aquecimento global.";
				texto[2] = "Além disso, ela gera economia na conta de energia, tanto para os consumidores quanto para os produtores.";
				texto[3] = "Existem várias formas de promover a eficiência energética, como usar equipamentos mais eficientes, que consomem menos energia para realizar a mesma função; aproveitar fontes renováveis de energia, como o sol, o vento e a água; adotar hábitos de consumo consciente, etc.";
				text_last = 3;
				break;
			case "rm_energyCuriosidade4":
				rmOrigem = "Curiosidade";
				sprite_index = spr_chatAna;
				texto[0] = "E aí, pessoal! Vocês sabem como as cidades inteligentes podem contribuir para a redução do consumo de energia? As cidades inteligentes são aquelas que usam tecnologia para melhorar a qualidade de vida dos moradores e otimizar o uso de recursos, como a energia.";
				texto[1] = "Elas usam sensores, sistemas de informação, redes inteligentes e outras ferramentas para monitorar e controlar o consumo de energia em edifícios e infraestruturas, como iluminação pública, transporte e segurança.";
				texto[2] = "Assim, elas podem reduzir o desperdício, aumentar a eficiência, integrar fontes renováveis e promover a participação dos cidadãos na gestão energética.";
				texto[3] = "No Brasil, existem alguns exemplos de cidades inteligentes que estão investindo em projetos de redução do consumo de energia, como Curitiba, que instalou lâmpadas LED na iluminação pública; Campinas, que implantou um sistema de gestão energética em prédios públicos;";
				texto[4] = "E Atibaia, que desenvolveu uma rede elétrica inteligente com medidores digitais e geração distribuída. Legal né?";
				text_last = 4;
				break;
			case "rm_quizCuriosidade1":
				rmOrigem = "Curiosidade";
				sprite_index = spr_chatAna;
				texto[0] = "Olá, pessoal! Vocês conhecem o conceito de sustentabilidade ambiental? Ele se refere ao uso responsável dos recursos naturais, para que eles não se esgotem e possam ser usados pelas gerações futuras.";
				texto[1] = "A sustentabilidade ambiental faz parte do desenvolvimento sustentável, que busca equilibrar o progresso econômico e social com a proteção do meio ambiente. Esse é um desafio importante para garantir um futuro melhor para todos. Vamos praticar algumas ações sustentáveis no nosso cotidiano.";
				text_last = 1;
				break;
			case "rm_quizCuriosidade2":
				rmOrigem = "Curiosidade";
				sprite_index = spr_chatAna;
				texto[0] = "Oi, pessoal! Vocês sabem o que são cidades inteligentes? São cidades que usam tecnologia para melhorar a vida das pessoas e o uso dos recursos. Elas são mais eficientes, sustentáveis, inclusivas e resilientes.";
				texto[1] = "Elas usam dados e tecnologias como internet das coisas, inteligência artificial, big data e outras para solucionar problemas e oferecer serviços com mais qualidade e transparência.";
				texto[2] = "No Brasil, existem algumas cidades inteligentes, como Smart City Laguna, no Ceará, e Curitiba, São Paulo e Campinas. Vamos pensar em como podemos tornar nossas cidades mais inteligentes também.";
				texto[3] = " Podemos usar aplicativos de mobilidade, economizar energia e água, participar de consultas públicas online, denunciar problemas urbanos por plataformas digitais e cobrar dos governantes mais transparência e eficiência."
				text_last = 3;
				break;
			case "rm_quizCuriosidade3":
				rmOrigem = "Curiosidade";
				sprite_index = spr_chatAna;
				texto[0] = "Olá, pessoal! Vocês conhecem a importância das florestas para a sustentabilidade? As florestas são ecossistemas cheios de vida, que ajudam a regular o clima, o ciclo da água e o solo. Elas também fornecem recursos e serviços essenciais para bilhões de pessoas, incluindo povos indígenas e comunidades tradicionais.";
				texto[1] = " Mas as florestas estão sofrendo com o desmatamento, que é a destruição da vegetação para outros usos humanos."
				texto[2] = "O desmatamento traz muitos problemas, como perda de biodiversidade, emissão de gases de efeito estufa, alteração do clima, redução da qualidade da água, aumento do risco de incêndios e conflitos sociais. Por isso, precisamos preservar as florestas e usar os seus recursos de forma sustentável.";
				texto[3] = "Algumas formas de fazer isso são: criar áreas protegidas, recuperar áreas degradadas, combater o comércio ilegal de madeira e animais, apoiar os povos indígenas e comunidades tradicionais, reduzir o consumo de carne e produtos derivados do desmatamento e educar as pessoas sobre a importância das florestas.";
				texto[4] = "Vamos valorizar as florestas e defender a sua conservação. Assim, estaremos contribuindo para a sustentabilidade do planeta e para o bem-estar de todos os seres vivos.";
				text_last = 4;
				break;
			case "rm_quizCuriosidade4":
				rmOrigem = "Curiosidade";
				sprite_index = spr_chatAna;
				texto[0] = "Ei, pessoal! Vocês sabem o que são os Objetivos de Desenvolvimento Sustentável (ODS)? Os ODS são metas estabelecidas pela ONU para o desenvolvimento sustentável até 2030. Eles são um apelo global à ação para acabar com a pobreza, proteger o meio ambiente e o clima e garantir que todas as pessoas tenham dignidade.";
				texto[1] = "Eles foram criados no Brasil, durante a Conferência das Nações Unidas sobre Desenvolvimento Sustentável no Rio de Janeiro, em 2012. Os ODS são 17 objetivos ambiciosos e interconectados que abordam os principais desafios de desenvolvimento enfrentados por pessoas no Brasil e no mundo.";
				texto[2] = "Eles integram temas como consumo sustentável, mudança climática, desigualdade econômica, inovação, diversidade, paz e justiça";
				text_last = 2;
				break;
			case "rm_quizCuriosidade5":
				rmOrigem = "Curiosidade";
				sprite_index = spr_chatAna;
				texto[0] = "Oi, oi, pessoal! Vocês sabem o que é a pegada de carbono? A pegada de carbono é uma medida da quantidade de carbono equivalente liberada na atmosfera por uma atividade humana. O carbono equivalente é uma forma de converter todos os gases de efeito estufa, como o dióxido de carbono (CO2) e o metano (CH4), em uma unidade comum.";
				texto[1] = "A pegada de carbono pode ser calculada para um produto, um serviço, uma empresa, uma organização ou uma pessoa."
				texto[2] = "A pegada de carbono serve para avaliar o impacto das nossas ações no clima e nas mudanças climáticas. Quanto maior a pegada de carbono, maior a contribuição para o aquecimento global. Isso acontece porque os gases de efeito estufa retêm o calor na atmosfera e alteram o equilíbrio térmico do planeta.";
				texto[3] = "Para reduzir a pegada de carbono, é preciso adotar hábitos mais sustentáveis, como usar fontes renováveis de energia, economizar eletricidade, optar por meios de transporte menos poluentes, consumir produtos locais e orgânicos, evitar o desperdício de alimentos e reciclar os resíduos";
				texto[4] = "Vamos fazer a nossa parte e reduzir a nossa pegada de carbono. Assim, estaremos protegendo o clima e o meio ambiente.";
				text_last = 4;
				break;
			case "rm_quizCuriosidade6":
				rmOrigem = "Curiosidade";
				sprite_index = spr_chatAna;
				texto[0] = "Olá, pessoal! Vocês sabem qual é a importância da educação ambiental para a sustentabilidade? A educação ambiental é o processo de obter novos conhecimentos sobre as questões ambientais, se tornando um agente transformador da preservação do meio ambiente e dos seus recursos naturais.";
				texto[1] = "Ela busca promover valores, atitudes e comportamentos que respeitem o ambiente e garantam o bem-estar de todos os seres vivos1. A educação ambiental é importante para a sustentabilidade porque capacita a população para tomar decisões mais sustentáveis no dia a dia, considerando os impactos das suas ações no planeta e nas gerações futuras.";
				texto[2] = "Ela também estimula a participação e o engajamento dos cidadãos na solução dos problemas ambientais, como a poluição, o desmatamento, a perda de biodiversidade, a escassez de água e as mudanças climáticas.";
				texto[3] = " A educação ambiental pode ser desenvolvida em diferentes espaços e contextos, como na escola, na família, na comunidade, no trabalho e nos meios de comunicação.";
				texto[4] = "Ela deve ser integrada aos currículos escolares de forma transversal e interdisciplinar, abordando temas como consumo sustentável, energia renovável, reciclagem, compostagem, horta orgânica, entre outros.";
				texto[5] = "Além disso, ela deve envolver atividades práticas, lúdicas e participativas, que despertem o interesse e a sensibilidade dos estudantes para as questões ambientais.";
				text_last = 5;
				break;
		}
	}	
	
	}
