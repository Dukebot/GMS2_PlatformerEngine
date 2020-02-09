if (right or left) {
	speedX = (right - left) * acceleration;
	speedX = clamp(speedX, -maxSpeed, maxSpeed);
} else {
	applyFriction(acceleration);
	move(oSolid);
}