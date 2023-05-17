/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

draw_self();
draw_set_font(fnt_dialog);
draw_set_color(c_black);
draw_set_halign(fa_left);
draw_set_valign(fa_top);


var _len = string_length(text[text_current]);
if (char_current < _len)
{
	char_current += char_speed;
}

var _str = string_copy(text[text_current], 1, char_current);
draw_text(text_x, text_y, _str);
