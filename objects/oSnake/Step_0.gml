/// @description State machine
if (state == enemy.moving) {
	if (speedX > 0) {
		var wallAtRight = place_meeting(x+1, y, oSolid);
		var ledgeAtRight = not position_meeting(bbox_right + 1, bbox_bottom + 1, oSolid);
		
		if (wallAtRight or ledgeAtRight) {
			speedX *= -1;
		}
		
		image_xscale = 1;
		x += speedX;
	}
	else if (speedX < 0) {
		var wallAtLeft = place_meeting(x-1, y, oSolid);
		var ledgeAtLeft = not position_meeting(bbox_left - 1, bbox_bottom + 1, oSolid);
		
		if (wallAtLeft or ledgeAtLeft) {
			speedX *= -1;
		}
		
		image_xscale = -1;
		x += speedX;
	}
}
else if (state == enemy.hurt) {
	enemyHurtState();
}