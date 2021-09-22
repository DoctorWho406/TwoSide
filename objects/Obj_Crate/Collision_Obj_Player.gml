/// @description Insert description here
// You can write your code in this editor

crate_angle = point_direction(x,y,Obj_Player.x, Obj_Player.y)

//LEFT SIDE
if (crate_angle > 135 && crate_angle < 225)
{
	show_debug_message("leftside")
}

//RIGHT SIDE
if (crate_angle < 45 || crate_angle > 315)
{
	show_debug_message("rightside")
}

//TOPSIDE
if (crate_angle > 45 && crate_angle < 135)
{
	show_debug_message("topside")
}


//DOWNSIDE
if (crate_angle > 225 && crate_angle < 315)
{
	show_debug_message("downside")
}