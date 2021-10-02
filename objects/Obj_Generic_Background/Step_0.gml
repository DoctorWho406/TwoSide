/// @description 
/// @description Insert description here
if(x + (sprite_width * 0.5) <= 0) {
	x = sprite_width * 1.5;
}
if (global.pause) {
	speed=0;
} else {
	speed = - (BACKGROUND_SPEED + backgroundAddSpeed);
}