/// @description Move up and down

++moveTimer;
y += moveAmount;

if (moveTimer > moveMaxTimer) {
	moveTimer = 0;
	moveAmount *= -1;
}