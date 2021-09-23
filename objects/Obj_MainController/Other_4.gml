///@description 
playerTop=instance_create_layer(100,0,"Middleground_Layer",Obj_Player);
playerBottom=instance_create_layer(100,room_height,"Middleground_Layer",Obj_Player);
playerBottom.image_yscale*= -1;

playerTop.otherPlayer=playerBottom;
playerTop.playerID = -1;
playerTop.playerCommandID = -1;
playerBottom.otherPlayer=playerTop;
playerBottom.playerID = 1;
playerBottom.playerCommandID = 1;

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