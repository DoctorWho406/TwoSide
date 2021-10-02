/// @description 
/// @description Insert description here
if(x + sprite_width <= 0) {
	x = sprite_width;
}
if (global.pause) {
	speed=0;
} else {
	speed = - (BACKGROUND_SPEED + backgroundAddSpeed);
}