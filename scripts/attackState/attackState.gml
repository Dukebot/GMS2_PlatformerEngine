//Change sprite to attack animation

//todo set the sprite with the animation of the attack
//sprite_index = sPlayerIdle;

instance_create_layer(x+32, y, "Instances", oPlayerAttackHitBox);

state = player.moving;