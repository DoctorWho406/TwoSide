///@function
///@description
///@param
function player_idle() {
	//On game init
	if((playerID==-1 && y >= room_height * 0.5 - 50) || (playerID==1 && y <= room_height * 0.5 + 50)) {
		y = playerID == -1 ? room_height * 0.5 - 50 : room_height * 0.5 + 50;
		ySpeed=0;
		yRelative = 0;
		state = player_run;
	} else {
		ySpeed -= PLAYER_JUMP_SPEED;
	}
}

function player_run(_Player_Instance){
	if(player_command_jump(playerID)){
		if(otherPlayer.state == player_land) {
			if(jumpIncreaseCount < PLAYER_MAX_JUMP_INCREASE_NUMBER) {
				jumpIncreaseCount++;
				jumpHeight *= PLAYER_JUMP_INCREASE_FACTOR;
			}
		}
		state = player_jump;
	}
}

function player_jump() {
	if(jumpState == JumpState.Start) {
		ySpeed = PLAYER_JUMP_SPEED;
		if(yRelative >= jumpHeight) {
			jumpState = JumpState.Loop;
		}
	} else {
		ySpeed = -PLAYER_JUMP_SPEED;
		//Controllo fine salto
		if(jumpState != JumpState.End && ((playerID==-1 && y >= room_height * 0.5 - PLAYER_H_END_JUMP) || (playerID==1 && y <= room_height * 0.5 + PLAYER_H_END_JUMP))) {
			jumpState = JumpState.End;
		} else if((playerID==-1 && y >= room_height * 0.5 - 50) || (playerID==1 && y <= room_height * 0.5 + 50)) {
			y = playerID == -1 ? room_height * 0.5 - 50 : room_height * 0.5 + 50;
			ySpeed=0;
			state = player_run;
			jumpState = JumpState.Start;
		}
	}
}

function player_land() {
}

function player_counter() {
}

function player_dead() {
}