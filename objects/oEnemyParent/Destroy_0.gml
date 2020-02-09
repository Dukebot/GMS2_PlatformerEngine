/// @description Create some blood

repeat (irandom_range(4, 7)) {
	var randomX = irandom_range(-4, 4);
	var randomY = irandom_range(-4, 4);
	
	var particle = instance_create_layer(x + randomX, y + randomY, "Enemies", oParticle);
	particle.image_blend = c_red;
	particle.image_speed = 0.25;
}