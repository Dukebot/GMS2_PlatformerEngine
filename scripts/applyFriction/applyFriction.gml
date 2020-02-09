///@description applyFriction(amount)

///@param amount
var amount = argument0;

//Check if we are moving
if (speedX != 0) {
	
	//abs = absolute function (gives the value in positive)
	if (abs(speedX) - amount > 0) {
		
		//We use image xscale because it will be 1 or -1 depending if we are moving right or left
		speedX -= amount * image_xscale;
	} else {
		speedX = 0;	
	}
}