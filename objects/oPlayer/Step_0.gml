/// @description Controlling the player's state

getInput();

if (godModeTimer >= 0) {
	godModeTimer--;
	
	image_alpha -= imageAlphaInc;
	if (image_alpha < 0) {
		image_alpha = 0;
		imageAlphaInc *= -1;
	} else if (image_alpha > 1) {
		image_alpha = 1;
		imageAlphaInc *= -1;	
	}
	
	if (godModeTimer < 0) image_alpha = 1;
}


switch (state) {
	case player.moving:
		moveState();
		break;
	case player.ledgeGrab:
		ledgeGrabState();
		break;
	case player.door:
		doorState();
		break;
	case player.hurt:
		hurtState();
		break;
	case player.death:
		deathState();
		break;
}