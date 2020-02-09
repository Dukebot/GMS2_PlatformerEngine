///@description move(collitionObject)

///@param collisionObject
var collisionObject = argument0;

//Horizontal Collision
if (place_meeting(x + speedX, y, collisionObject)) {
	show_debug_message("Entra");
	while (not place_meeting(x + sign(speedX), y, collisionObject)) {
		x += sign(speedX);	
	}
	speedX = 0;
}

//Vertical Collision


x += speedX;
y += speedY;