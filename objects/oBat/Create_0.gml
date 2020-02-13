/// @description Initialize bat

event_inherited();

//movement variables
speedX = 0;
speedY = 0;
maxSpeed = 1.5;

hp = 2;

enum bat {
	idle,
	chase,
	hurt
}
state = bat.idle;

sight = 180;