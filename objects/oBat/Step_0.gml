/// @description State Machine

switch (state) {
	case bat.idle:
		image_index = sBatIdle;
		
		if (instance_exists(oPlayer)) {
			var distance = point_distance(x, y, oPlayer.x, oPlayer.y);
			if (distance < sight) {
				state = bat.chase;	
			}
		}
		break;
		
	case bat.chase:
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
		break;
		
	case bat.hurt:
		
		break;
}