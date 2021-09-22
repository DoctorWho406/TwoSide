///@function
///@description
///@param
function player_run(_Player_Instance){
	if(player_command_jump(playerID)){
		state = player_jump;
	}
}

function player_jump() {
	console_log("Jump state");
	//Jump
	if(otherPlayer.state == player_land) {
		
	}
	ySpeed = PLAYER_JUMP_SPEED;
	if(yRelative >= jumpHeight) {
		ySpeed = -PLAYER_JUMP_SPEED;
		//Controllo fine salto
	}
}

function player_land() {
}

function player_counter() {
}

function player_dead() {
}