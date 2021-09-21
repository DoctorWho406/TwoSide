/// @description
//Stop gravity
if((playerID==-1 && y >= room_height * 0.5) || (playerID==1 && y <= room_height * 0.5)) {
	//g = 0;
	ySpeed=0;
} else {
	ySpeed -=g;
	//g = maxG;
}
if(player_command_up(playerID)){
	ySpeed += jumpSpeed;
}
y += ySpeed * playerID;