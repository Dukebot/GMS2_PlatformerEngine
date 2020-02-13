/// @description Insert description here

//we use end step event because we want the camera to follow 
//the object after it's position has been updated in step event

#macro view view_camera[0]

camera_set_view_size(view, viewWidth, viewHeight);

//Center the camera on the object to follow;
if (instance_exists(objectToFollow)) {
	var Speed = 0.1;
	
	var currentX = camera_get_view_x(view);
	var currentY = camera_get_view_y(view);
	
	var wantToMoveX = objectToFollow.x - viewWidth/2;
	var wantToMoveY = objectToFollow.y - viewHeight/2;
	
	wantToMoveX = clamp(wantToMoveX, 0, room_width - viewWidth);
	wantToMoveY = clamp(wantToMoveY, 0, room_height - viewHeight);
	
	camera_set_view_pos(
		view, 
		lerp(currentX, wantToMoveX, Speed), 
		lerp(currentY, wantToMoveY, Speed)
	);
} else {
	viewWidth = room_width;
	viewHeight = room_height;
}