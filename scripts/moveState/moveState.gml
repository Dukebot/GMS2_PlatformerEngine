//Set sprite
if (speedX == 0) {
	sprite_index = sPlayerIdle;
} else {
	sprite_index = sPlayerWalk;
}

//Check if player is on the ground
if (not place_meeting(x, y+1, oSolid)) {
	speedY += gravityAcceleration;
} else {
	speedY = 0;	
}

//Change direction of the sprite
if (speedX != 0) {
	image_xscale = sign(speedX);
}

//Check for moving left or right
if (right or left) {
	speedX += (right - left) * acceleration;
	speedX = clamp(speedX, -maxSpeed, maxSpeed);
} else {
	applyFriction(acceleration); 
}

//Move the player
move(oSolid);