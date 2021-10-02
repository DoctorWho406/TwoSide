/// @description Insert description here
// You can write your code in this editor
if(x + (sprite_width * 0.5) <= 0) {
	x = room_width + (sprite_width * 0.5);
}
if (global.pause) {
	speed=0;
} else {
	speed = - GAME_SPEED;
}
