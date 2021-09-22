/// @description 
otherPlayer = noone;
playerID = 0;
playerCommandID = 0;

ySpeed = - PLAYER_JUMP_SPEED;
yRelative = abs(y - instance_find(Obj_Ground, 0));
state = player_jump;
//jumpState = JumpState.Start;
jumpHeight = PLAYER_H_JUMP_INITIAL;
jumpIncreaseCount = 0;
nextJump = false;
cronoCounter = 0;
counter = false;
