/// @description Controlling the player's state

getInput();
godModeTimerLogic();

switch (state) {
	case player.moving:
		moveState();
		if (spacePressed) {
			instance_create_layer(x+32*image_xscale, y, "Instances", oPlayerAttackHitBox);
		}
		break;
	case player.ledgeGrab:
		ledgeGrabState();
		break;
	/*case player.attack:
		attackState();
		break;*/
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