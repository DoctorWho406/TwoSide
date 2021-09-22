///@function
///@description
///@param
function player_run(_Player_Instance){
	//Controllo comandi
	with(_Player_Instance) {
		if(player_command_jump(playerID)){
			state = player_jump;
		}
	}
}

function player_jump(_Player_Instance) {
	//Jump
	ySpeed += PLAYER_JUMP_SPEED;
}