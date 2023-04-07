/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

if (keyboard_check_pressed(vk_space))
{
	var _len = string_length(text[text_current]);
	if (char_current < _len)
	{
		char_current = _len;
	}
	else
	{
		text_current += 1;
		if (text_current > text_last)
		{
			room_restart();
		}
		else
		{
			text[text_current] = string_wrap(text[text_current], text_width);
			char_current = 0;
		}
	}
}