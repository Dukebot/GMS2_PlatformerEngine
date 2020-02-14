/// @description State machine
if (state == enemy.moving) {
	if (speedX > 0) {
		if (isWallAtRight(oSolid) or isLedgeAtRight(oSolid)) {
			speedX *= -1;
		}
	} else if (speedX < 0) {		
		if (isWallAtLeft(oSolid) or isLedgeAtLeft(oSolid)) {
			speedX *= -1;
		}
	}
	image_xscale = speedX;
	x += speedX;
	
} else if (state == enemy.hurt) {
	//Change direction as we fly around
	if (speedX != 0) image_xscale = sign(speedX);
	
	if (not isOnGround(oSolid)) { 
		speedY += gravityAcceleration;	
	} else {
		speedY = 0;
		applyFriction(acceleration);
	}
	directionMoveBounce(oSolid); 

	//Change back to other states
	if (speedX == 0 and speedY == 0) {
		image_blend = c_white;
		state = enemy.moving;
		speedX = image_xscale;
	}
}