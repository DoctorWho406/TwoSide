///@function
///@description
///@param
function player_Command_Up(player_ID){
switch(player_ID){
	case 1:
	      return keyboard_check(ord("W"));
    case 2: return keyboard_check(vk_up);
}
}

function player_Command_Down(player_ID){
switch(player_ID){
	case 1:
	      return keyboard_check(ord("S"));
    case 2: return keyboard_check(vk_down);
}
}