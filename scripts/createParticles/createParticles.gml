///@param minParticles
var minParticles = argument0;

///@param maxParticles
var maxParticles = argument1;

///@param particleObject
var particleObject = argument2;

///@param particleColor
var particleColor = argument3;


repeat (irandom_range(minParticles, maxParticles)) {
	var randomX = irandom_range(-4, 4);
	var randomY = irandom_range(-4, 4);
	
	var particle = instance_create_layer(x + randomX, y + randomY, "Instances", particleObject);
	particle.image_blend = particleColor;
	particle.image_speed = 0.25;
}