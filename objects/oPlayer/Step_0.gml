/// @description Controlling the player's state

getInput();

switch (state) {
	case player.moving:
		moveState();
		break;
		
	case player.ledgeGrab:
		break;
		
	case player.door:
		break;
		
	case player.hurt:
		break;
		
	case player.death:
		break;
}