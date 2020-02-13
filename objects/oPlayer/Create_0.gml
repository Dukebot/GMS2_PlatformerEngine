/// @description Initialize Player Variables

/*//Original values
maxSpeed = 4;
speedX = 0;
speedY = 0;
acceleration = 1;
gravityAcceleration = 0.5;
jumpHeight = -9;
grabWidth = 18;*/

maxSpeed = 4;
speedX = 0;
speedY = 0;

//Increase accel to remove the BUG
acceleration = 0.25;
gravityAcceleration = global.Gravity;

jumpHeight = -8;
grabWidth = 18;

godModeTimer = -1;
imageAlphaInc = 0.2;

enum player {
	moving,
	ledgeGrab,
	attack,
	door,
	hurt,
	death
}

state = player.moving;