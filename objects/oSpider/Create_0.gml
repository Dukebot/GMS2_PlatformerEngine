/// @description Init the spider

event_inherited();

//set spider to be still first
image_speed = 0;
image_index = 0;

sight = 128;
maxSpeed = 4;
acceleration = 1.5;
gravityAcceleration = 0.5;

hp = 2;

enum spider {
	idle,
	jump,
	hurt
}

state = spider.idle;