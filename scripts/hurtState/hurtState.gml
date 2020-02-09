sprite_index = sPlayerHurt;

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

//Change back to other states
if (speedX == 0 and speedY == 0) {
	
	//Check health
	if (oGame.hp <= 0) {
		state = player.death;
	} else {
		state = player.moving;
		image_blend = c_white;	
	}
}