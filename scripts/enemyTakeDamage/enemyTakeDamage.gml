///@description enemy_take_damage

var State = 0;
if (object_index == oSnake) {
	State = snake.hurt;
} else if (object_index == oBat) {
	State = bat.hurt;
} else if (object_index == oSpider) {
	State = spider.hurt;
}

show_debug_message(string(State));

if (State != 0 and state != State) { 
	state = State;
	
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
	
	hp--;
	if (hp <= 0) instance_destroy();
}


