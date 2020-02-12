//Set sprite for idle or walk
if (speedX == 0) {
	sprite_index = sPlayerIdle;
} else {
	sprite_index = sPlayerWalk;
}

//If player is on the Air
if (not isOnGround()) {
	//Set the sprite for jump
	sprite_index = sPlayerJump;
	image_index = (speedY > 0);
}