/// @description Switch states

if (state == enemy.idle) {
	if (instance_exists(oPlayer)) {
		speedX = sign(oPlayer.x - x) * maxSpeed;
		speedY = -abs(speedX * 2);
	}
	
	move(oSolid);
	state = enemy.jump;
}
