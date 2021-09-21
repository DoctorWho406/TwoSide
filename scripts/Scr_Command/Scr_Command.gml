///@function
///@description
///@param
function player_command_up(_Player_ID){
	switch(_Player_ID){
		case -1: return keyboard_check_pressed(ord("W"));
	    case 1: return keyboard_check_pressed(vk_up);
	}
}

function player_command_down(_Player_ID){
	switch(_Player_ID){
		case -1: return keyboard_check_pressed(ord("S"));
	    case 1: return keyboard_check_pressed(vk_down);
	}
}