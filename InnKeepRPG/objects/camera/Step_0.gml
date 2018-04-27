/// @description Enter Camera Mode "C"
moveCam = keyboard_check(ord("C"));

if(moveCam){
	moveX = (keyboard_check(ord("D")) - keyboard_check(ord("A")))*6;
	moveY = (keyboard_check(ord("S")) - keyboard_check(ord("W")))*6;
	
	x += moveX;
	y += moveY;
} else {
	//MOVE THE VIEW
	x = clamp(x, following.x-h_border,  following.x+h_border);
	y = clamp(y, following.y-v_border,  following.y+v_border);
}

