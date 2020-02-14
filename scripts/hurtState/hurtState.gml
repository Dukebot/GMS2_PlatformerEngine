sprite_index = sPlayerHurt;

//Change direction as we fly around
if (speedX != 0) {
	image_xscale = sign(speedX);	
}

if (not isOnGround(oSolid)) {
	speedY += gravityAcceleration;	
} else {
	speedY = 0;
	applyFriction(acceleration);
}
directionMoveBounce(oSolid);

//Here can be an infinite loop with lava where we never exit the hurt state

//Change back to other states
if (isNotMoving(speedX, speedY)) { 
	
	//1 second of invincibility when hurt state ends
	godModeTimer = 60;
	
	//Check if player died
	if (oGame.hp <= 0) {
		//Transition to death state
		state = player.death;
	} else {
		//Transition to moving state
		state = player.moving;
		image_blend = c_white;
	}
}