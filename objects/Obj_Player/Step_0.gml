/// @description
//Stop gravity
if(!(y >= playerID* room_height * 0.5)) {
	ySpeed += g * playerID;
} else {
	ySpeed = 0;
}
if(player_command_up(playerID)){
	ySpeed += jumpSpeed * playerID;
}
y += ySpeed;