/// @description
//Stop gravity
if((y==-1 && y >= room_height * 0.5) || (y==1 && y <= room_height * 0.5)) {
	g = 0;
} else {
	g = maxG;
}
ySpeed -= g;
if(player_command_up(playerID)){
	ySpeed += jumpSpeed;
}
y += ySpeed * playerID;