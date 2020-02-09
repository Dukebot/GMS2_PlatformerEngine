/// @description Move to the next level
if (up and other.visible = true) {
	y = yprevious;
	state = player.door;
	audio_play_sound(aExit, 4, false);
	audio_stop_sound(aJump);
}

if (room == rBoss) {
	game_restart();
}