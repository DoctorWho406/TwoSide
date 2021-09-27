/// @description Insert description here
// You can write your code in this editor

if(keyboard_check(ord("W")) && keyboard_check(ord("L"))){
	audio_play_sound(Snd_BottonPressed,1000,false);
	room_goto_next();
}