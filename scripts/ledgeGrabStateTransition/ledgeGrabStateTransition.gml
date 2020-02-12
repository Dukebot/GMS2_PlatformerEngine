speedX = 0;
speedY = 0;
	
//Move against the ledge
while (not place_meeting(x + image_xscale, y, oSolid)) {
	x += image_xscale;
}
	
//Correct vertical position
while (position_meeting(x + grabWidth * image_xscale, y - 1, oSolid)) {
	y -= 1;
}
	
//Change sprite and state
sprite_index = sPlayerLedgeGrab;
state = player.ledgeGrab;
	
audio_play_sound(aStep, 6, false);