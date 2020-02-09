/// @description Init the spider

//set spider to be still first
image_speed = 0;
image_index = 0;

sight = 128;
maxSpeed = 4;
acceleration = 1.5;
gravityAcceleration = 0.5;

enum spider {
	idle,
	jump
}

state = spider.idle;