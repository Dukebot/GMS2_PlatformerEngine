/// @description Init snake

event_inherited();

enum snake {
	moveRight,
	moveLeft,
	hurt
}

speedX = 1;
speedY = 0;

hp = 3;

state = choose(snake.moveRight, snake.moveLeft);