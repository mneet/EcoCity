/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor



if (keyboard_check_pressed(vk_space) or mouse_check_button_pressed(mb_left))
{
	var _len = string_length(texto[text_current]);
	if (char_current < _len)
	{
		char_current = _len
	}
	else
	{
		text_current += 1;
		if (text_current > text_last)
		{
			controleDialogo();
			instance_destroy(self);
		}
		else
		{
			char_current = 1;
		}
	}
}