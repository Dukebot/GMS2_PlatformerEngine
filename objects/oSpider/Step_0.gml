/// @description State machine
if (state == enemy.idle) {
	if (instance_exists(oPlayer)) {
		var distance = distance_to_object(oPlayer);
			
		if (distance < sight and alarm[0] <= 0) {
			image_speed = 0.5;
				
			if (oPlayer.x != x) {
				image_xscale = sign(oPlayer.x - x);	
			}
		}
	}
	
	speedY += gravityAcceleration;
	move(oSolid);
}
else if (state == enemy.jump) {
	image_index = image_number - 1;
		
	if (not isOnGround(oSolid)) {
		speedY += gravityAcceleration;	
	} else {
		speedY = 0;
		applyFriction(acceleration);
			
		if (speedX == 0 and speedY == 0) {
			state = enemy.idle;
			alarm[0] = 15;
			image_speed = 0;
			image_index = 0;
		}
	}
		
	if (speedX != 0) {
		image_xscale = sign(speedX);
	}
		
	move(oSolid);
}
else if (state == enemy.hurt) {
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
	
		state = enemy.idle;
	}
}