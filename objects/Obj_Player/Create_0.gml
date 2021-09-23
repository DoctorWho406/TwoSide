/// @description 
otherPlayer = noone;
playerID = 0;
playerCommandID = 0;

ySpeed = - PLAYER_JUMP_SPEED;
yRelative = abs(y - instance_find(Obj_Ground, 0));
state = player_jump;
nextJump = false;
cronoMiddleJump = 0;
cronoCounter = 0;
counter = false;

img_Run = noone;
img_death = noone;
img_jump_Loop = noone;
img_jump_landing = noone;
img_jump_Start = noone;
img_Crunch_End = noone;
img_Crunch_Loop = noone;
img_Crunch_Start = noone;
img_Apice= noone;
