///@description take_damage

if (state != player.hurt) {
	state = player.hurt;
	
	//Play the hurt sound
	audio_play_sound(aOuch, 8, false);
	
	//Draw the sprite with red color
	image_blend = make_colour_rgb(220, 150, 150);
	
	//Knockback
	var knockbackY = 6;
	var knockbackX = 8;
	speedY = -knockbackY;
	speedX = (sign(x - other.x) * knockbackX);
	move(oSolid);
	
	//Substract HP
	if (instance_exists(oGame)) oGame.hp--;
}

