/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

draw_self();

//Definindo fonte, cor e posição
if (global.start){
	draw_set_font(fnt_dialog);
	draw_set_color(c_white);
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);

	var _lvl = string(obj_enrgCntrl.levelEnrg);
	var _lvlTot = string(obj_enrgCntrl.levelTot);
	if (_lvl > _lvlTot) _lvl = _lvlTot;
	draw_text(x - 23, y - 25, string(_lvl) + "/" + string(_lvlTot));
}