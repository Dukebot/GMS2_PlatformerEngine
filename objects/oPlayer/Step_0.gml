/// @description Controlling the player's state

getInput();

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
		break;
	case player.death:
		break;
}