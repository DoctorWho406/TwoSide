/// @description 
otherPlayer = noone;
playerID = 0;
playerCommandID = 0;
firstTime = true;

ySpeed = - PLAYER_JUMP_SPEED;
console_log(instance_find(Obj_Ground, 0).y);
console_log(y);
yRelative = abs(y - instance_find(Obj_Ground, 0).y);
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
