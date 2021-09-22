/// @description
//Stop gravity
script_execute(state, instance_id);

if((playerID==-1 && y >= room_height * 0.5) || (playerID==1 && y <= room_height * 0.5)) {
	y = room_height * 0.5;
	ySpeed=0;
} else {
	ySpeed -=GRAVITY_FORCE;
}

//if(player_command_jump(playerID)){
//	ySpeed += PLAYER_JUMP_SPEED;
//}

y += (ySpeed * playerID);