/// @description State machine


switch (state) {
	case snake.moveRight:
		var wallAtRight = place_meeting(x+1, y, oSolid);
		var ledgeAtRight = not position_meeting(bbox_right + 1, bbox_bottom + 1, oSolid);
		
		if (wallAtRight or ledgeAtRight) {
			state = snake.moveLeft;	
		}
		
		image_xscale = 1;
		x += speedX;
		break;
	case snake.moveLeft:
		var wallAtLeft = place_meeting(x-1, y, oSolid);
		var ledgeAtLeft = not position_meeting(bbox_left - 1, bbox_bottom + 1, oSolid);
		
		if (wallAtLeft or ledgeAtLeft) {
			state = snake.moveRight;	
		}
		
		image_xscale = -1;
		x -= speedX;
		break;
	case snake.hurt:
		enemyHurtState();
}