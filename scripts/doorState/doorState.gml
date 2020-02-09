sprite_index = sPlayerExit;

//Fade out
if (image_alpha > 0) {
	image_alpha -= 0.05;
} else {
	//Go to the next room
	room_goto_next();
}