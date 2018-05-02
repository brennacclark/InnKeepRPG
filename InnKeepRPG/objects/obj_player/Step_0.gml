///@description Handle Player Movement

//----- update input
input_left	= keyboard_check(ord("A"));
input_right = keyboard_check(ord("D"));
input_up	= keyboard_check(ord("W"));
input_down	= keyboard_check(ord("S"));

//----- reset move variables
moveX = 0;
moveY = 0;

//----- intended movement
moveX = (input_right - input_left) * spd;
moveY = (input_down - input_up) * spd;


// ----- get direction player is facing
if(moveX != 0){
	switch(sign(moveX)){
		case 1: facing = dir.right; break;
		case -1: facing = dir.left; break;
	}
} else if(moveY != 0){
	switch(sign(moveY)){
		case 1: facing = dir.down; break;
		case -1: facing = dir.up; break;
	}
} else {
	facing = -1;
}



//---------COLLISIONS
//Horizontal
if(moveX != 0) {
	var collisionH = instance_place(x+moveX, y, obj_collision);
	if(collisionH != noone and collisionH.collideable){
		repeat(abs(moveX)){
			if(!place_meeting(x+sign(moveX), y, obj_collision)){ x += sign(moveX); } 
			else { break; }
		}
		moveX = 0;
	}
} 

//Vertical
else if (moveY != 0){
	var collisionV = instance_place(x, y+moveY, obj_collision);
	if(collisionV != noone and collisionV.collideable){
		repeat(abs(moveY)){
			if(!place_meeting(x, y+sign(moveY), obj_collision)){ y += sign(moveY); } 
			else { break; }
		}
		moveY = 0;
	}
}


//----- objects and transitions
var inst = instance_place(x,y, obj_transition);
if(inst != noone and facing == inst.playerFacingBefore){
	with(game){
		if(!doTransition){
			spawnRoom = inst.targetRoom;
			spawnX = inst.targetX;
			spawnY = inst.targetY;
			spawnPlayerFacing = inst.playerFacingAfter;
			doTransition = true;
		}
	}
}


//----- move farmer
x += moveX;
y += moveY;