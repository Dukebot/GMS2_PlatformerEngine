/// @description Controlling the player's state

getInput();
godModeTimerLogic();

if (state == player.moving) {
	moveState();
	if (spacePressed) {
		instance_create_layer(x+32*image_xscale, y, "Instances", oPlayerAttackHitBox);
	}
	if (enterPressed) {
		instanceCreate(oPlayerShoot, x, y);
	}
}
else if (state == player.ledgeGrab) {
	ledgeGrabState();
}
else if (state == player.door) {
	doorState();
}
else if (state == player.hurt) {
	hurtState();
}
else if (state == player.death) {
	deathState();
}

