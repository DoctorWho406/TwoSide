///@description 
//audio_play_sound("Snd_GamePlaySound",true);
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

playerTop.img_Crunch_Start = Spr_Player_Crunch;
playerTop.img_death = Spr_Player_Up_Death;
playerTop.img_jump_landing= Spr_Player_Up_Jump_Landing;
playerTop.img_jump_Loop= Spr_Player_Up_Jump_Loop;
playerTop.img_jump_Start= Spr_Player_Up_Jump_Start;
playerTop.img_Run= Spr_Player_Run;
playerTop.img_Apice= Spr_Player_Up_Apice;

playerBottom.img_Crunch_Start = Spr_Player_Down_Crunch;
playerBottom.img_death = Spr_Player_Down_Death;
playerBottom.img_jump_landing= Spr_Player_Down_Landing;
playerBottom.img_jump_Loop= Spr_Player_Down_Jump_Loop;
playerBottom.img_jump_Start= Spr_Player_Down_jump_Start;
playerBottom.img_Run= Spr_Player_Down_Run;
playerBottom.img_Apice= Spr_Player_Down_Apice;



objBackgroundGroundHead = instance_find(Obj_Ground,0);
objBackgroundGroundTail = instance_find(Obj_Ground,1);
objBackgroundHead = instance_find(Obj_Background, 0);
objBackgroundTail = instance_find(Obj_Background, 1);

objBackgroundGroundHead.x = objBackgroundHead.sprite_width * 0.5;
objBackgroundGroundHead.y= objBackgroundHead.sprite_height * 0.5;
objBackgroundGroundTail.x = objBackgroundTail.sprite_width * 1.5;
objBackgroundGroundTail.y= objBackgroundTail.sprite_height * 0.5;

objBackgroundHead.x = objBackgroundHead.sprite_width * 0.5;
objBackgroundHead.y= objBackgroundHead.sprite_height * 0.5;
objBackgroundTail.x = objBackgroundTail.sprite_width * 1.5;
objBackgroundTail.y= objBackgroundTail.sprite_height * 0.5;