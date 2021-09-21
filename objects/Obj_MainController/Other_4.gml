///@description 
player = instance_create_layer(15, 300, "Instances", Obj_Player);
objBackgroundHead = instance_create_layer(0, 0, "Instances", Obj_Background);
objBackgroundTail = instance_create_layer(0, 0, "Instances", Obj_Background);


objBackgroundHead.x = objBackgroundHead.sprite_width * 0.5;
objBackgroundHead.y= objBackgroundHead.sprite_height * 0.5;
objBackgroundTail.x = objBackgroundTail.sprite_width * 1.5;
objBackgroundTail.y= objBackgroundTail.sprite_height * 0.5;

