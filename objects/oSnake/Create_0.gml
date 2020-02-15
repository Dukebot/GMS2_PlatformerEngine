/// @description Init snake
event_inherited();

speedX = choose(-1, 1);
speedY = 0;

hp = 3;

previousState = 0;
state = enemy.moving;