///@param knockBackX
var knockbackX = 0;
if (argument_count > 0) knockbackX = argument[0];

///@param knockBackY
var knockbackY = 0;
if (argument_count > 1) knockbackY = argument[1];

///@param sound
var sound = aOuch;
if (argument_count > 2) sound = argument[2];

///@description enemy_take_damage
if (state != enemy.hurt) {
	state = enemy.hurt;
	
	//Play the hurt sound
	audio_play_sound(sound, 8, false);
	
	//Draw the sprite with red color
	image_blend = make_colour_rgb(220, 150, 150);
	
	//Knockback
	speedY = -knockbackY;
	speedX = (sign(x - other.x) * knockbackX);
	
	//Apply knockback
	move(oSolid);
	
	//Substract hp and will the enemy if applies
	hp--;
	if (hp <= 0) instance_destroy();
}