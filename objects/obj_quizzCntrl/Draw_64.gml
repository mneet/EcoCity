/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

//Definindo fonte, cor e posição
draw_set_font(fnt_dialog);
draw_set_color(c_white);
draw_set_halign(fa_left);
draw_set_valign(fa_top);


if (global.start)
{
	draw_text(212, 45 , "Acertos: " + string(pontos));
	draw_text(995, 45 , string(qtdPrgnt) + "/5");
}