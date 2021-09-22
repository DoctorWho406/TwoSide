///@description ALL MACROS
#macro		PLAYER_JUMP_SPEED			10
#macro		GRAVITY_FORCE				0.5
#macro		PLAYER_H_JUMP_INITIAL		10
#macro		PLAYER_JUMP_INCREASE_FACTOR	2/3
#macro		PLAYER_MAX_JUMP_INCREASE_NUMBER	3



#macro		BACKGROUND_SPEED			10

#macro		CRATE_SPEED					10

#macro      H_MOVING_CRATE				5
#macro      VELOCITY_MOVING_CRATE		3

Player_Top=instance_create_layer(100,0,"Middelground_Layer",Obj_Player);
Player_Bottom=instance_create_layer(room_height,0,"Middelground_Layer",Obj_Player);
Player_Top.otherPlayer=Player_Bottom;
Player_Bottom.otherPlayer=Player_Top;