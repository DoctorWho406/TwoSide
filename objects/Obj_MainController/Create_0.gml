///@description ALL MACROS
#macro		UNIT_TO_PIXEL				64

#macro		PLAYER_JUMP_SPEED			10
#macro		PLAYER_H_JUMP_INITIAL		1.5 * UNIT_TO_PIXEL
#macro		PLAYER_JUMP_INCREASE_SUM	1 * UNIT_TO_PIXEL
#macro		PLAYER_MAX_JUMP_INCREASE_NUMBER	3
#macro		PLAYER_H_END_JUMP			100

#macro		BACKGROUND_SPEED			10

#macro		CRATE_SPEED					10

#macro      H_MOVING_CRATE				100
#macro      VELOCITY_MOVING_CRATE		3

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