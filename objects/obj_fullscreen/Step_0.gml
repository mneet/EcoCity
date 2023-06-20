/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

if (sprite_index != sprite) sprite_index = sprite;
if (tamanho = 0){
	tamanho = tamanho_inicial;
	tamanho_final = tamanho;
	tamanho_alvo = tamanho * 1.1;
}

//Checando se o mouse esta por cima de mim
var _mouse_sobre = position_meeting(mouse_x, mouse_y, id);
//Checando se o mouse clicou
var _mouse_click = mouse_check_button_pressed(mb_left);

if (global.dialogoCntrl || global.start) image_alpha = .3;
else image_alpha = 1;

//Checando se o mouse esta por cima de mim E a pessoa clicou
if (_mouse_sobre && !global.dialogoCntrl)
{
	//Mudar tamanho
	tamanho_final = tamanho_alvo;
	if (_mouse_click)
	{
		 global.fullscreen = !global.fullscreen;
    
	    // Chama a função window_set_fullscreen com o valor da variável fullscreen
	    window_set_fullscreen(global.fullscreen);
    
	    // Se o jogo estiver em fullscreen, calcula um fator de escala para manter a proporção da resolução base
	    if global.fullscreen {
	        var display_width = display_get_width();
	        var display_height = display_get_height();
	        var scale_factor = min(display_width / global.base_width, display_height / global.base_height);
        
	        // Define o tamanho da janela do jogo como a resolução base multiplicada pelo fator de escala
	        window_set_size(global.base_width * scale_factor, global.base_height * scale_factor);
	    } else {
	        // Se o jogo não estiver em fullscreen, define o tamanho da janela do jogo como a resolução base
	        window_set_size(global.base_width, global.base_height);
	    }
	}
}
else
{
	tamanho_final = tamanho_inicial;
}


tamanho = lerp(tamanho, tamanho_final, 0.15);

image_xscale = tamanho;
image_yscale = tamanho;