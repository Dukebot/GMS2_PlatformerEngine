/// @description Draw GUI based on the room

if (room == rTitle) {	
	draw_set_halign(fa_center);
	
	//Draw Title
	draw_set_font(fTitle);
	{
		var text = "Cave Boy";
		var posX = room_width/2;
		var posY = 24;
		var transparency = 1;
	
		var color = c_black;
		draw_text_color(posX + 4, posY + 6, text, color, color, color, color, transparency);
	
		color = c_white;
		draw_text_color(room_width/2, 24, text, color, color, color, color, transparency);
	}
	
	//Draw Start
	draw_set_font(fStart);
	{
		var text = "Press space to play";
		var posX = room_width/2;
		var posY = room_height - 48;
	
		var transparency = 0.7;
		var color = c_black;
		draw_text_color(posX + 1, posY + 1, text, color, color, color, color, transparency);
	
		transparency = 1;
		color = c_white;
		draw_text_color(posX, posY, text, color, color, color, color, transparency);
	}
} 
else if (room != rTitle) {
	
	//Draw Health
	for (var i = 1; i <= hp; ++i) {
		draw_sprite_ext(sHeart, 0, i*25 - 10, 15, 1, 1, 0, c_white, 1);	
	}
	
	//Draw score
	draw_set_font(fScore);
	draw_set_halign(fa_left);
	draw_text(5, 25, "Score: " + string(sapphires));
}