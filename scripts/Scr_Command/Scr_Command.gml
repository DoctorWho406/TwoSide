///@function
///@description
///@param
function player_Command_Up(_Player_ID){
switch(_Player_ID){
	case 1: return keyboard_check(ord("W"));
    case 2: return keyboard_check(vk_up);
}
}

function player_Command_Down(_Player_ID){
switch(_Player_ID){
	case 1: return keyboard_check(ord("S"));
    case 2: return keyboard_check(vk_down);
}
}