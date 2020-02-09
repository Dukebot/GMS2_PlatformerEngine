/// @description Controlling the player's state

#region Set up controls for the player
var right = keyboard_check(vk_right);
var left = keyboard_check(vk_right);
var up = keyboard_check(vk_right);
var down = keyboard_check(vk_right);

var upRelease = keyboard_check_released(vk_up);
#endregion

#region State Machine
switch (state) {
	case player.moving:
		#region Move State
		
		if (right or left) {
			speedX = (right - left) * acceleration;
			speedX = clamp(speedX, -maxSpeed, maxSpeed);
		} else {
				
		}
		#endregion
		break;
		
	case player.ledgeGrab:
		#region Ledge Grab State
		#endregion
		break;
		
	case player.door:
		#region Door State
		#endregion
		break;
		
	case player.hurt:
		#region Hurt State
		#endregion
		break;
		
	case player.death:
		#region Death State
		#endregion
		break;
}
#endregion