//Old code

if (object_index == oSnake) {
	if (image_xscale < 0) state = snake.moveLeft;
	if (image_xscale > 0) state = snake.moveRight;
	speedX = 1;
}
	
if (object_index == oBat) {
	state = bat.idle;
}
	
if (object_index == oSpider) {
	state = spider.idle;
}