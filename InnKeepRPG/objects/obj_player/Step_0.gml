/// @description Handle Player Movement

// ----- update input
input_left	= keyboard_check(ord("A"));
input_right = keyboard_check(ord("D"));
input_up	= keyboard_check(ord("W"));
input_down	= keyboard_check(ord("S"));

// ----- reset move variables
moveX = 0;
moveY = 0;

// ----- intended movement
moveX = (input_right - input_left) * spd;
moveY = (input_down - input_up) * spd;


if(moveX != 0){
	if(place_meeting(x+moveX, y, obj_collision)){ 
		repeat(abs(moveX)){
			if(!place_meeting(x+sign(moveX), y, obj_collision)) { x += sign(moveX); }
			else {	break;	}
		}
		moveX=0;
	}	
}

if(moveY != 0){
	if(place_meeting(x, y+moveY, obj_collision)){ 
		repeat(abs(moveY)){
			if(!place_meeting(x, y+sign(moveY), obj_collision)) { y += sign(moveY); }
			else {	break;	}
		}
		moveY=0;
	}	
}


// ----- move farmer
x += moveX;
y += moveY;



