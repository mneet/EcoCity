/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

global.dialogoCntrl = false;

global.recCmpltd	  = false;
global.recGCmpltd     = false;
global.quizzCmpltd	  = false;
global.energyCmpltd	  = false;
global.energyFCmpltd  = false;
global.energyGameC    = false;
global.menuCmpltd     = false;
global.start		  = false;
global.shake		  = 0;



//Recordes
global.recRecorde   = 0;
global.quizzRecorde = 0;

//Cria uma variável para armazenar o estado do fullscreen
global.fullscreen = false;

// Cria uma variável para armazenar a resolução base do jogo
global.base_width = 1280;
global.base_height = 720;

// Define o tamanho inicial da janela do jogo
window_set_size(global.base_width, global.base_height);
