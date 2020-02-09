///@description move(collitionObject)

///@param collisionObject
var collisionObject = argument0;

//Horizontal Collision
if (place_meeting(x + speedX, y, collisionObject)) {
	while (not place_meeting(x + sign(speedX), y, collisionObject)) {
		x += sign(speedX);	
	}
	speedX = 0;
}

//Vertical Collision
if (place_meeting(x, y + speedY, collisionObject)) {
	while (not place_meeting(x, y + sign(speedY), collisionObject)) {
		y += sign(speedY);	
	}
	speedY = 0;
}

x += speedX;
y += speedY;