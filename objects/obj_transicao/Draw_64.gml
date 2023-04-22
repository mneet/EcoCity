/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

draw_set_color(c_black);

//Desenhando meu retangulo com o valor do meu alpha
draw_set_alpha(alpha);

//Pegando informações da gui
var x2 = display_get_gui_width();
var y2 = display_get_gui_height();

draw_rectangle(0, 0, x2, y2, false);


draw_set_color(-1);
//Resetando o alpha
draw_set_alpha(1)