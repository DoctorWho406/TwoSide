/// @description Insert description here
// You can write your code in this editor
if (isColliding)
{
	if (State == collisionState.collidingOnLeft)
	{
		//CallDeath
	}
	else if (State == collisionState.collidingOnTop)
	{
		//WalkOnIt
	}
	else if (State == collisionState.collidingOnDown)
	{
		//CallJump
	}
}

if(global.pause) {
	speed = 0;
} else {
	speed = - GAME_SPEED;
}	