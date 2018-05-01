/// @description Room Transitions
//  Fade to Black


if(doTransition){
	
	// handle black fade/room transition
	if(room != spawnRoom) {
		blackAlpha += 0.1;
		if(blackAlpha >= 1) { room_goto(spawnRoom); }
	} else {
		blackAlpha -= 0.1;
		if(blackAlpha <= 0) { doTransition = false; }
	}
	
	
	//draw black fade
	draw_set_alpha (blackAlpha);
	draw_rectangle_color(0, 0, global.game_width, global.game_height, c_black, c_black, c_black, c_black, false);
	draw_set_alpha (1);
}