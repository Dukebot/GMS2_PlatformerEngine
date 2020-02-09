/// @description Init variables

maxHp = 3;
hp = maxHp;
sapphires = 0;

//Changes the actual GUI to the size of the camera
display_set_gui_size(getCameraWidth(), getCameraHeight());

//Start the music
audio_play_sound(aTitle, 10, false);