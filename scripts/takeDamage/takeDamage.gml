///@description take_damage

if (state != player.hurt and godModeTimer < 0) {
	state = player.hurt;
	
	//Play the hurt sound
	audio_play_sound(aOuch, 8, false);
	
	//Draw the sprite with red color
	image_blend = make_colour_rgb(220, 150, 150);
	
	//Knockback
	var knockbackY = 3;
	var knockbackX = 3;
	speedY = -knockbackY;
	speedX = (sign(x - other.x) * knockbackX);
	move(oSolid);
	
	//Substract HP
	if (instance_exists(oGame)) oGame.hp--;
}

