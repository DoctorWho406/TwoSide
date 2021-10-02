/// @description
if(keyboard_check(ord("W")) && keyboard_check(ord("L"))) {
	score = 0;
	room_goto(GamePlay_Room);
}
if(keyboard_check(ord("X"))) {
	game_end();
}