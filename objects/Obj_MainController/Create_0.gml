///@description ALL MACROS
#macro		UNIT_TO_PIXEL				80
#macro		FPS							60

#macro		PLAYER_JUMP_SPEED			2
#macro		PLAYER_H_JUMP_INITIAL		1.5 * UNIT_TO_PIXEL
#macro		PLAYER_JUMP_INCREASE_SUM	1 * UNIT_TO_PIXEL
#macro		PLAYER_MAX_JUMP_INCREASE_NUMBER	2
#macro		PLAYER_COUNTER_TIMER		1
#macro		PLAYER_H_END_JUMP			100

#macro		BACKGROUND_SPEED			10

#macro		CRATE_SPEED					10

#macro      H_MOVING_CRATE				100
#macro      VELOCITY_MOVING_CRATE		3

global.jumpHeight = PLAYER_H_JUMP_INITIAL;
global.jumpIncreaseCount = 0;

enum JumpState {Start, Loop, End};

playerTop=instance_create_layer(100,0,"Middleground_Layer",Obj_Player);
playerBottom=instance_create_layer(100,room_height,"Middleground_Layer",Obj_Player);
playerBottom.image_yscale*= -1;

playerTop.otherPlayer=playerBottom;
playerTop.playerID = -1;
playerTop.playerCommandID = -1;
playerBottom.otherPlayer=playerTop;
playerBottom.playerID = 1;
playerBottom.playerCommandID = 1;