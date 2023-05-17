/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

if (keyboard_check_pressed(vk_space) or mouse_check_button_pressed(mb_left))
{
	var _len = string_length(text[text_current]);
	if (char_current < _len)
	{
		char_current = _len;
	}
}

alphaDestroy();