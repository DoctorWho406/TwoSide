///@function
///@description
///@param
function player_command_jump(_Player_ID){
	switch(_Player_ID){
		case -1: return keyboard_check_pressed(ord("W"));
	    case 1: return keyboard_check_pressed(ord("L"));
	}
}

function player_command_counter_jump(_Player_ID){
	switch(_Player_ID){
		case -1: return keyboard_check_pressed(ord("S"));
	    case 1: return keyboard_check_pressed(ord("P"));
	}
}