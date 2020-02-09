/// @description State machine

switch (state) {
	case spider.idle:
		if (instance_exists(oPlayer)) {
			var distance = distance_to_object(oPlayer);
			
			if (distance < sight and alarm[0] <= 0) {
				image_speed = 0.5;
				
				if (oPlayer.x != x) {
					image_xscale = sign(oPlayer.x - x);	
				}
			}
		}
		break;
		
	case spider.jump:
		image_index = image_number - 1;
		
		if (not place_meeting(x, y+1, oSolid)) {
			speedY += gravityAcceleration;	
		} else {
			speedY = 0;
			applyFriction(acceleration);
			
			if (speedX == 0 and speedY == 0) {
				state = spider.idle;
				alarm[0] = 15;
				image_speed = 0;
				image_index = 0;
			}
		}
		
		if (speedX != 0) {
			image_xscale = sign(speedX);
		}
		
		move(oSolid);
		break;
}