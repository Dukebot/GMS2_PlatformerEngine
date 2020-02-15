gravityAcceleration = global.Gravity;
acceleration = 0.25;

speedX = 0;
speedY = 0;

hp = 1;

enum enemy {
	idle,
	moving,
	attack,
	chase,
	jump,
	hurt
}