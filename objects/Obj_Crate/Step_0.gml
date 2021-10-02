/// @description

//Distruzione
if(x + sprite_width * 0.5 < 0) {
	instance_destroy();
}

//Collisione
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

//Pausa
if(global.pause) {
	speed = 0;
} else {
	speed = - GAME_SPEED;
}