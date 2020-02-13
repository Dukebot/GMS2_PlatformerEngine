//Change direction as we fly around
if (speedX != 0) {
	image_xscale = sign(speedX);	
}

if (not place_meeting(x, y+1, oSolid)) {
	speedY += gravityAcceleration;	
} else {
	speedY = 0;
	applyFriction(acceleration);
}
directionMoveBounce(oSolid); 

//Here can be an infinite loop with lava where we never exit the hurt state

//Change back to other states
if (speedX == 0 and speedY == 0) {
	image_blend = c_white;
	
	enemyHurtStateExit();
}