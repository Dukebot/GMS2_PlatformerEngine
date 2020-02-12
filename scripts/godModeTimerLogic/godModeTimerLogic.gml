if (godModeTimer >= 0) {
	godModeTimer--;
	
	image_alpha += imageAlphaInc;
	if (image_alpha < 0) {
		image_alpha = 0;
		imageAlphaInc *= -1;
	} else if (image_alpha > 1) {
		image_alpha = 1;
		imageAlphaInc *= -1;	
	}
	
	if (godModeTimer < 0) image_alpha = 1;
}