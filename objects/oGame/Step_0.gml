/// @description Begin the game

if (keyboard_check_pressed(vk_space) and room == rTitle) {
	room_goto(rOne);
	audio_stop_sound(aTitle);
	audio_play_sound(aCave, 10, true);
}

//Change music if on the main screen too long
if (not audio_is_playing(aTitle) and not audio_is_playing(aCave)) {
	audio_play_sound(aCave, 10, true);
}