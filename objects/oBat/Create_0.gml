/// @description Initialize bat

//movement variables
speedX = 0;
speedY = 0;
maxSpeed = 1.5;

enum bat {
	idle,
	chase
}
state = bat.idle;

sight = 180;