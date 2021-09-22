/// @description Insert description here
// You can write your code in this editor

crate_angle = point_direction(x,y,Obj_Player.x, Obj_Player.y)

//LEFT SIDE
if (crate_angle > 135 && crate_angle < 225)
{
	State = state.collidingOnLeft
	isColliding = true
}


//TOPSIDE
if (crate_angle > 45 && crate_angle < 135)
{
	State = state.collidingOnTop
	isColliding = true
}


//DOWNSIDE
if (crate_angle > 225 && crate_angle < 315)
{
	State = state.collidingOnDown
	isColliding = true
}