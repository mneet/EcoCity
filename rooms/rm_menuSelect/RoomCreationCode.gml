if (!global.menuCmpltd) criaDialogo("rm_menu1");

if (!audio_is_playing(snd_Lights))
{
	audio_stop_all()
	audio_play_sound(snd_Lights, 1, 1)	
}