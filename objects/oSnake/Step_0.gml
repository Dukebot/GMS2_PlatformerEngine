/// @description State machine
if (state == enemy.moving) {
	if (speedX > 0) {
		var wallAtRight = place_meeting(x+1, y, oSolid);
		var ledgeAtRight = not position_meeting(bbox_right + 1, bbox_bottom + 1, oSolid);
		
		if (wallAtRight or ledgeAtRight) {
			speedX *= -1;
		}
	}
	else if (speedX < 0) {
		var wallAtLeft = place_meeting(x-1, y, oSolid);
		var ledgeAtLeft = not position_meeting(bbox_left - 1, bbox_bottom + 1, oSolid);
		
		if (wallAtLeft or ledgeAtLeft) {
			speedX *= -1;
		}
	}
	image_xscale = speedX;
	x += speedX;
}
else if (state == enemy.hurt) {
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