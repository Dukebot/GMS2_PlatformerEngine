/// @description colliding with enemy

//destroy snake if we fall above
var aboveEnemy = y < other.y + speedY;
var falling = speedY > 0;

if (aboveEnemy and (falling or state == player.ledgeGrab)) {
	
	//Keep player above the enemy
	if (not place_meeting(x, yprevious, oSolid)) {
		y = yprevious;
	}
	
	//Approach as close as possible to the enemy
	while (not place_meeting(x, y+1, other)) {
		y++;	
	}
	
	with (other) instance_destroy();
	
	//Bounce off the enemy
	speedY = -16/3;
	
	audio_play_sound(aStep, 6, false);
} else {
	takeDamage();
}

//take damage otherwise