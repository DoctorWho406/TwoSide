///@description 
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