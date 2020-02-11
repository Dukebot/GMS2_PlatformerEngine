/// @description Initialize Player Variables

maxSpeed = 4;
speedX = 0;
speedY = 0;

acceleration = 1;
gravityAcceleration = 0.5;

jumpHeight = -9;
grabWidth = 18;

godModeTimer = -1;

enum player {
	moving,
	ledgeGrab,
	door,
	hurt,
	death
}

state = player.moving;