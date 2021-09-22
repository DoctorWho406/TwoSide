///@function
///@description
///@param
function player_set_state(_New_State) {
	//sprite / image index
	switch(_New_State) {
		case player_run:
			vSpeed = 0;
			yRelative = 0;
		break;
	}
}

function player_run() {
	if(player_command_jump(playerID, playerCommandID)) {
		player_set_state(player_start_jump);
	} else if(player_command_counter(playerID, playerCommandID)) {
		player_set_state(player_counter);
	}
}

function player_start_jump() {
	ySpeed = PLAYER_JUMP_SPEED;
}

function player_jump() {
	if(ySpeed > 0) {
		if(yRelative >= jumpHeight) {
			ySpeed = - PLAYER_JUMP_SPEED;
		}
	} else {
		//Calcolo distanza dall'atterraggio
	}
}

function player_end_jump() {
	
}

function player_land() {
	
}

function player_counter() {

}

function player_dead() {
	game_restart();
}