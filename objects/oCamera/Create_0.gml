/// @description Init Camera
viewWidth = 1920/6;
viewHeight = 1080/6;
windowScale = 3;
objectToFollow = oPlayer;

window_set_size(
	viewWidth*windowScale, 
	viewHeight*windowScale
);

surface_resize(
	application_surface, 
	viewWidth*windowScale, 
	viewHeight*windowScale
);

alarm[0] = 1;