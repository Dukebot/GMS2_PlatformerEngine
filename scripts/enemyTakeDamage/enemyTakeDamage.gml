///@description enemy_take_damage
if (state != enemy.hurt) {
	state = enemy.hurt;
	
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
	
	hp--;
	if (hp <= 0) instance_destroy();
}