/// @description Initialize Player Variables

/*//Original values
maxSpeed = 4;
speedX = 0;
speedY = 0;
acceleration = 1;
gravityAcceleration = 0.5;
jumpHeight = -9;
grabWidth = 18;*/

maxSpeed = 4;
speedX = 0;
speedY = 0;

//Increase accel to remove the BUG
acceleration = 0.25;
gravityAcceleration = global.Gravity;

jumpHeight = -8;
grabWidth = 18;

godModeTimer = -1;
imageAlphaInc = 0.2;

enum player {
	moving,
	ledgeGrab,
	attack,
	door,
	hurt,
	death
}

statesArray[player.moving] = moveState;
statesArray[player.ledgeGrab] = ledgeGrabState;
statesArray[player.attack] = attackState;
statesArray[player.door] = doorState;
statesArray[player.hurt] = hurtState;
statesArray[player.death] = deathState;

/*spritesArray[player.moving] = moveState;
spritesArray[player.ledgeGrab] = ledgeGrabState;
spritesArray[player.attack] = attackState;
spritesArray[player.door] = doorState;
spritesArray[player.hurt] = hurtState;
spritesArray[player.death] = deathState;*/

state = player.moving;