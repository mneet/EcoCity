if (!global.energyCmpltd) criaDialogo("rm_energy1");

if (!audio_is_playing(snd_Lukrembo___Cheese))
{
	audio_stop_all()
	audio_play_sound(snd_Lukrembo___Cheese, 1, 1)	
}