///@description enemy_take_damage

if (state != snake.hurt) {
	state = snake.hurt;
	
	//Play the hurt sound
	audio_play_sound(aOuch, 8, false);
	
	//Draw the sprite with red color
	image_blend = make_colour_rgb(220, 150, 150);
	
	//Knockback
	var knockbackY = 4;
	var knockbackX = 4;
	speedY = -knockbackY;
	speedX = (sign(x - other.x) * knockbackX);
	move(oSolid);
	
	//Substract HP
	//if (instance_exists(oGame)) oGame.hp--;
}