///@function
///@description
///@param
function player_command_jump(_Player_ID,_Player_Command_ID) {
	switch(_Player_ID) {
		case -1: return (_Player_ID == _Player_Command_ID ? keyboard_check_pressed(ord("W")) : keyboard_check_pressed(ord("S")));
		case 1: return (_Player_ID == _Player_Command_ID ? keyboard_check_pressed(ord("L")) : keyboard_check_pressed(ord("P")));
	}
}

function player_command_counter(_Player_ID,_Player_Command_ID) {
	switch(_Player_ID) {
		case -1: return (_Player_ID == _Player_Command_ID ? keyboard_check_pressed(ord("S")) : keyboard_check_pressed(ord("W")));
		case 1: return (_Player_ID == _Player_Command_ID ? keyboard_check_pressed(ord("P")) : keyboard_check_pressed(ord("L")));
	}
}