/// @description State Machine

if (state == enemy.idle) {
	image_index = sBatIdle;
		
	if (instance_exists(oPlayer)) {
		var distance = point_distance(x, y, oPlayer.x, oPlayer.y);
		if (distance < sight) {
			state = enemy.chase;	
		}
	}
}
else if (state == enemy.chase) {
	if (instance_exists(oPlayer)) {
		var dir = point_direction(x, y, oPlayer.x, oPlayer.y);
			
		speedX = lengthdir_x(maxSpeed, dir);
		speedY = lengthdir_y(maxSpeed, dir);
			
		sprite_index = sBatFly;
			
		if (speedX != 0) {
			image_xscale = sign(speedX);	
		}
			
		move(oSolid);
	}
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
	
		state = enemy.chase;
	}
}