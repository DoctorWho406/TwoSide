///@description ALL MACROS
#macro		UNIT_TO_PIXEL				64
#macro		FPS							60

#macro		PLAYER_JUMP_SPEED			10
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