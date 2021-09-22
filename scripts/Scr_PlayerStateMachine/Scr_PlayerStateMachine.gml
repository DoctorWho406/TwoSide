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

function player_run(){
	if(player_command_jump(playerID, playerCommandID)){
		jumpIncreaseCount = 0;
		jumpHeight = PLAYER_H_JUMP_INITIAL;
		state = player_jump;
	} else if(player_command_counter_jump(playerID, playerCommandID)) {
		jumpIncreaseCount = 0;
		jumpHeight = PLAYER_H_JUMP_INITIAL;
		state = player_jump;
	} else if(otherPlayer.state == player_land) {
		if(counter) {
			jumpIncreaseCount = 0;
			jumpHeight = PLAYER_H_JUMP_INITIAL;
			counter = false;
		} else if(jumpIncreaseCount < PLAYER_MAX_JUMP_INCREASE_NUMBER) {
			jumpIncreaseCount++;
			jumpHeight = PLAYER_H_JUMP_INITIAL + (jumpIncreaseCount * PLAYER_JUMP_INCREASE_SUM);
			state = player_jump;
		}
	}
}

function player_jump() {
	if(jumpState == JumpState.Start) {
		ySpeed = PLAYER_JUMP_SPEED;
		if(yRelative >= jumpHeight) {
			if(player_command_counter_jump(playerID, playerCommandID)) {
				counter = true;
			}
			jumpState = JumpState.Loop;
		}
	} else {
		ySpeed = -PLAYER_JUMP_SPEED;
		//Controllo fine salto
		if(jumpState != JumpState.End && ((playerID==-1 && y >= room_height * 0.5 - PLAYER_H_END_JUMP) || (playerID==1 && y <= room_height * 0.5 + PLAYER_H_END_JUMP))) {
			state = player_land;
		}
	}
}

function player_land() {
	jumpState = JumpState.End;
	if((playerID == -1 && y >= room_height * 0.5 - 50) || (playerID==1 && y <= room_height * 0.5 + 50)) {
		y = playerID == -1 ? room_height * 0.5 - 50 : room_height * 0.5 + 50;
		ySpeed=0;
		state = player_run;
		jumpIncreaseCount = 0;
		jumpHeight = PLAYER_H_JUMP_INITIAL;
		jumpState = JumpState.Start;
	}
}

function player_counter() {
	state = player_run;
}

function player_dead() {
	game_restart();
}