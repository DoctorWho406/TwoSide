///@function
///@description
///@param
function player_set_state(_New_State) {
	switch(_New_State) {
		case player_run:
			sprite_index = img_Run;
			ySpeed = 0;
			yRelative = 0;
		break;
		case player_start_jump:
			audio_play_sound(Snd_Jump_Player,1000,false);
			sprite_index = img_jump_Start;
			ySpeed = PLAYER_JUMP_SPEED;
		break;
		case player_jump:
			sprite_index = img_jump_Loop;
		break;
		case player_middle_jump:
			sprite_index = img_jump_Loop;
			ySpeed = 0;
		break;
		case player_end_jump:
			sprite_index = img_jump_Loop;
		break;
		case player_land:
			sprite_index = img_jump_landing;
			var ground = instance_find(Obj_Ground, 0);
			y = ground.y + ((ground.sprite_height * 0.5 + 1) * playerID);
			//y = ground.y + (ground.sprite_height * 0.5);
			cronoCounter = 0;
			ySpeed = 0;
			yRelative = 0;
		break;
		case player_dead:
		break;
		
	}
	state = _New_State;
}

function player_run() {
	//console_log("CI PASSO 1")
	if(player_command_jump(playerID, playerCommandID)) {
		global.jumpIncreaseCount = 0;
		global.jumpHeight = PLAYER_H_JUMP_INITIAL;
		player_set_state(player_start_jump);
	} else if(player_command_counter(playerID, playerCommandID)) {
		player_set_state(player_counter);
	} else if (otherPlayer.state == player_land && otherPlayer.cronoCounter == PLAYER_COUNTER_TIMER) {
		player_set_state(player_start_jump);
		if(global.jumpIncreaseCount < PLAYER_MAX_JUMP_INCREASE_NUMBER) {
			global.jumpIncreaseCount++;
			//console_log("JUMP COUNT: " + string(global.jumpIncreaseCount));
			global.jumpHeight = PLAYER_H_JUMP_INITIAL + (global.jumpIncreaseCount * PLAYER_JUMP_INCREASE_SUM);
			//console_log("JUMP HEIGHT : " + string(global.jumpHeight));
		}
	}
}

function player_start_jump() {
	//console_log("CI PASSO 2");
	if (image_index > image_number - 1)  {
		player_set_state(player_jump);
    }
}

function player_jump() {
	if(ySpeed > 0) {
	//console_log("CI PASSO 3");
		if(yRelative >= global.jumpHeight) {
			//console_log("Con" + string(yRelative) + " ho raggiunto " + string(global.jumpHeight));
			ySpeed = - PLAYER_JUMP_SPEED;
			player_set_state(player_middle_jump);
		}
	} else {
		//console_log("CI PASSO 4");
		var ground = instance_find(Obj_Ground, 0);
		//console_log("Ground " + string(ground) + " y: " + string(ground.y) + " halfHeigth: " + string((ground.sprite_height * 0.5)));
		if(abs(y - ground.y) - (ground.sprite_height * 0.5) <= PLAYER_H_END_JUMP) {
			//console_log("CI PASSO 5");
			player_set_state(player_end_jump);
		}
	}
}

function player_middle_jump() {
	if(cronoMiddleJump < PLAYER_MIDDLE_JUMP_TIMER) {
		cronoMiddleJump ++;
	} else {
		cronoMiddleJump = 0;
		ySpeed = - PLAYER_JUMP_SPEED;
		player_set_state(player_jump);
	}
}

function player_end_jump() {
	var ground = instance_find(Obj_Ground,0);
	if(firstTime) {	
		if(abs(y - ground.y) - (ground.sprite_height * 0.5) <= 0) {
			y = ground.y + ((ground.sprite_height * 0.5 + 1) * playerID);
			firstTime = false;
			player_set_state(player_run);
		}
	} else {
	//console_log("CI PASSO 6");
	if(player_command_jump(playerID, playerCommandID)) {
		nextJump = true;
		//console_log("SALTO PRENOTATO 1");
	} else if(player_command_counter(playerID, playerCommandID)){
		nextCount = true;
	}
		if(abs(y - ground.y) - (ground.sprite_height * 0.5) <= 0) {
			//console_log("CI PASSO 7");
			player_set_state(player_land);
		}
	}
}

function player_land() {
	//Premo salto
	if(player_command_jump(playerID, playerCommandID)) {
		nextJump = true;
		//console_log("SALTO PRENOTATO 2");
	} else if(player_command_counter(playerID, playerCommandID)){
		nextCount = true;
	}
	if(cronoCounter < PLAYER_COUNTER_TIMER) {
		//console_log("CI PASSO 8");
		cronoCounter ++;
		if(otherPlayer.state == player_end_jump || otherPlayer.state == player_land) {
			if(!nextCount) {
				nextJump = true;
			}
			if(!otherPlayer.nextCount) {
				otherPlayer.nextJump = true;
			}
		}
	} else {
		//console_log("CI PASSO 9");
		if(nextCount) {
			nextCount = false;
			global.jumpHeight = PLAYER_H_JUMP_INITIAL;
			global.jumpIncreaseCount = 0;
			player_set_state(player_counter);			
		} else if(nextJump) {
			//console_log("CI PASSO 10");
			nextJump = false;
			global.jumpHeight = PLAYER_H_JUMP_INITIAL;
			global.jumpIncreaseCount = 0;
			player_set_state(player_start_jump);
		} else {
			//console_log("CI PASSO 11");
			player_set_state(player_run);
		}
	}
}

function player_counter() {
		audio_play_sound(Snd_Counter_Player,1000,false);
	if (image_index > image_number - 1)  {
		global.jumpIncreaseCount = 0;
		global.jumpHeight = PLAYER_H_JUMP_INITIAL;
		player_set_state(player_run);
    }
}

function player_dead() {
	global.Obj_Stop=true;
	sprite_index = img_death;
	otherPlayer.sprite_index= otherPlayer.img_death;
	audio_play_sound(Snd_Death_Player,1000,false);
	if(image_index > image_number - 1){
    playerIsAlive=false;}

	//room_goto_next();
}