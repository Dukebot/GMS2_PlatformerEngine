///@description move(collitionObject)

///@param collisionObject
var collisionObject = argument0;

var _speedX = speedX;
if (_speedX < 0 and _speedX > -1) _speedX = -1;
if (_speedX > 0 and _speedX < 1) _speedX = 1;

var _speedY = speedY;
if (_speedY < 0 and _speedY > -1) _speedY = -1;
if (_speedY > 0 and _speedY < 1) _speedY = 1;

//Horizontal Collision
if (place_meeting(x + _speedX, y, collisionObject)) {
	while (not place_meeting(x + sign(speedX), y, collisionObject)) {
		x += sign(speedX);
	}
	speedX = -speedX/4;
}

//Vertical Collision
if (place_meeting(x, y + _speedY, collisionObject)) {
	while (not place_meeting(x, y + sign(speedY), collisionObject)) {
		y += sign(speedY);
	}
	speedY = -speedY/4;
	if (abs(speedY) < 2) {
		speedY = 0;	
	}
}

x += speedX;
y += speedY;