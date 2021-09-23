///@description ALL MACROS
#macro		UNIT_TO_PIXEL				85
#macro		FPS							60

#macro		PLAYER_JUMP_SPEED			10
#macro		PLAYER_H_JUMP_INITIAL		2.5 * UNIT_TO_PIXEL
#macro		PLAYER_JUMP_INCREASE_SUM	1.8* UNIT_TO_PIXEL
#macro		PLAYER_MAX_JUMP_INCREASE_NUMBER	1
#macro		PLAYER_COUNTER_TIMER		0.15* FPS
#macro		PLAYER_H_END_JUMP			100
#macro		PLAYER_MIDDLE_JUMP_TIMER	0.08*FPS

#macro		BACKGROUND_SPEED			10

#macro		CRATE_SPEED					10

#macro      H_MOVING_CRATE				100
#macro      VELOCITY_MOVING_CRATE		3

#macro      SCORE_START_ADD_FACTOR		4
#macro      SCORE_MULTIPLY_FACTOR		2
#macro		SCORE_TIMER					1 * FPS
#macro		SCORE_INCREMENT_TIMER		5 * FPS

global.jumpHeight = PLAYER_H_JUMP_INITIAL;
global.jumpIncreaseCount = 0;

enum collisionState {collidingOnLeft, collidingOnTop, collidingOnDown};