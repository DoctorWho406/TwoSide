/// @description Insert description here
// You can write your code in this editor
if (!audio_is_playing(Snd_GamePlaySound) and !audio_is_playing(Snd_Transition))
{
	audio_play_sound(Snd_GamePlaySound, 1000,true);
}
if(keyboard_check_pressed(ord("R"))) {
	game_restart();
}