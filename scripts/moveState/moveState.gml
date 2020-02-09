//Set sprite
if (speedX == 0) {
	sprite_index = sPlayerIdle;
} else {
	sprite_index = sPlayerWalk;
}

//Check if player is on the ground
if (not place_meeting(x, y+1, oSolid)) {
	speedY += gravityAcceleration;
	
	//Player is in the air
	sprite_index = sPlayerJump;
	image_index = (speedY > 0);
	
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

//Landing sound after jump
if (place_meeting(x, y + speedY + 1, oSolid) and speedY > 0) {
	audio_play_sound(aStep, 6, false);
}

//Move the player
move(oSolid);

//Check for ledge grab state
var falling = isFalling();
var wasntWall = not position_meeting(x + grabWidth * image_xscale, yprevious, oSolid);
var isWall = position_meeting(x + grabWidth * image_xscale, y, oSolid);

if (falling and wasntWall and isWall) {
	speedX = 0;
	speedY = 0;
	
	//Move against the ledge
	while (not place_meeting(x + image_xscale, y, oSolid)) {
		x += image_xscale;
	}
	
	//Correct vertical position
	while (position_meeting(x + grabWidth * image_xscale, y - 1, oSolid)) {
		y -= 1;
	}
	
	//Change sprite and state
	sprite_index = sPlayerLedgeGrab;
	state = player.ledgeGrab;
	
	audio_play_sound(aStep, 6, false);
}