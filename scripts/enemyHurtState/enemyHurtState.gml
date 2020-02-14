//Change direction as we fly around
if (speedX != 0) {
	image_xscale = sign(speedX);	
}

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
}