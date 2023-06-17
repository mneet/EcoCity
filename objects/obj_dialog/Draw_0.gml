/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
draw_self();

//Definindo fonte, cor e posição
draw_set_font(fnt_dialog);
draw_set_color(c_white);
draw_set_halign(fa_left);
draw_set_valign(fa_top);


var _len = string_length(texto[text_current]);
if (char_current < _len)
{
	char_current += char_speed;
}

var _str = string_copy(texto[text_current], 1, char_current);
draw_text_ext(text_x, text_y, _str, 30, text_width);
