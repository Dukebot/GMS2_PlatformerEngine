/// @description Switch states

if (state == spider.idle) {
	if (instance_exists(oPlayer)) {
		speedX = sign(oPlayer.x - x) * maxSpeed;
		speedY = -abs(speedX * 2);
	}
	
	move(oSolid);
	state = spider.jump;
}
