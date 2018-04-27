/// @description Draw obj_crop 

draw_sprite_part (
	spr_crops, 0, growthStage*frameWidth, 
	cropType*frameHeight, frameWidth, frameHeight, 
	xx, yy
);


//Draw the sparkle
var sparkle_xoffset = 2;
var sparkle_yoffset = -10;

if(sparkle >= 0){
	draw_sprite(spr_sparkle, sparkle, x+sparkle_xoffset, y+sparkle_yoffset);
	sparkle += .1;
	
	if(sparkle >= sprite_get_number(spr_sparkle)){ 
		//animation has reached last frame
		sparkle = -1;
		
		// set alarm to off every 4-5 seconds.
		alarm[1] = random_range(4,5)*room_speed;
	}
}

