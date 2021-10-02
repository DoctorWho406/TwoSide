/// @description 
otherPlayer = noone;
playerID = 0;
playerCommandID = 0;
firstTime = true;

ySpeed = - PLAYER_JUMP_SPEED;
yRelative = abs(y - instance_find(Obj_Ground, 0));
state = player_jump;
nextJump = false;
nextCount = false;
cronoMiddleJump = 0;
cronoCounter = 0;
cronoGameOver = 0;

spriteRun= noone;
spriteJumpStart = noone;
spriteJumpLoop= noone;
spriteJumpMiddle = noone;
spriteJumpLanding = noone;
spriteCrunch = noone;
spriteDeath = noone;
