///@function
///@description
///@param
function player_command_up(_Player_ID){
	switch(_Player_ID){
		case 1: return keyboard_check(ord("W"));
	    case -1: return keyboard_check(vk_up);
	}
}

function player_command_down(_Player_ID){
	switch(_Player_ID){
		case 1: return keyboard_check(ord("S"));
	    case -1: return keyboard_check(vk_down);
	}
}