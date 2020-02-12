setPlayerSprite();

if (not isOnGround()) {	
	speedY += gravityAcceleration;
	
	//Control the jump height
	if (upRelease and speedY < -6) {
		speedY = -3;	
	}
} else {
	speedY = 0;	
	
	//Jumping code
	if (up) {
		speedY = jumpHeight;
		audio_play_sound(aJump, 5, false);
	}
}

if (right) image_xscale = 1;
if (left) image_xscale = -1;
setSpriteDirection(speedX);

if (right or left) {
	speedX += (right - left) * acceleration;
	speedX = clamp(speedX, -maxSpeed, maxSpeed);
} else {
	applyFriction(acceleration); 
}

move(oSolid);

//Landing sound after jump
if (place_meeting(x, y + speedY + 1, oSolid) and speedY > 0) {
	audio_play_sound(aStep, 6, false);
}

if (checkForLedgeGrabState()) {
	ledgeGrabStateTransition();
}