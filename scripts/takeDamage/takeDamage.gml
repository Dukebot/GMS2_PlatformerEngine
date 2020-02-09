///@description take_damage

if (state != player.hurt) {
	state = player.hurt;
	
	audio_play_sound(aOuch, 8, false);
	
	image_blend = make_colour_rgb(220, 150, 150);
	
	speedY = -6;
	speedX = (sign(x - other.x) * 8);
	
	move(oSolid);
	
	if (instance_exists(oGame)) {
		oGame.hp--;	
	}
}

