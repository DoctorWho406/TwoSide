///@description
audio_stop_sound(Snd_MenuPlaySound);
if (!audio_is_playing(Snd_GamePlaySound))
{
	audio_play_sound(Snd_Transition, 1000,false)
}

playerTop=instance_create_layer(100,0,"Middleground_Layer",Obj_Player);
playerBottom=instance_create_layer(100,room_height,"Middleground_Layer",Obj_Player);
playerBottom.sprite_index= Spr_Player_Down_Run;
playerBottom.image_yscale*= -1;

playerTop.otherPlayer=playerBottom;
playerTop.playerID = -1;
playerTop.playerCommandID = -1;
playerBottom.otherPlayer=playerTop;
playerBottom.playerID = 1;
playerBottom.playerCommandID = 1;

playerTop.spriteRun= Spr_Player_Up_Run;
playerTop.spriteJumpStart = Spr_Player_Up_Jump_Start;
playerTop.spriteJumpLoop= Spr_Player_Up_Jump_Loop;
playerTop.spriteJumpMiddle = Spr_Player_Up_Jump_Middle;
playerTop.spriteJumpLanding = Spr_Player_Up_Jump_Landing;
playerTop.spriteCrunch = Spr_Player_Up_Crunch_Start;
playerTop.spriteDeath = Spr_Player_Up_Death;

playerBottom.spriteRun= Spr_Player_Down_Run;
playerBottom.spriteJumpStart = Spr_Player_Down_Jump_Start;
playerBottom.spriteJumpLoop= Spr_Player_Down_Jump_Loop;
playerBottom.spriteJumpMiddle = Spr_Player_Down_Jump_Middle;
playerBottom.spriteJumpLanding = Spr_Player_Down_Jump_Landing;
playerBottom.spriteCrunch = Spr_Player_Down_Crunch;
playerBottom.spriteDeath = Spr_Player_Down_Death;


//objGroundHead = instance_find(Obj_Ground,0);
//objGroundTail = instance_find(Obj_Ground,1);
//objBackgroundHead = instance_find(Obj_Background, 0);
//objBackgroundTail = instance_find(Obj_Background, 1);

//objGroundHead.x = 0;
//objGroundHead.y= room_height * 0.5;
//objGroundTail.x = objGroundHead.sprite_width;
//objGroundTail.y= room_height * 0.5;

//objBackgroundHead.x = 0;
//objBackgroundHead.y= 0;
//objBackgroundTail.x = objBackgroundHead.sprite_width;
//objBackgroundTail.y= 0;