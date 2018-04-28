/// @description Draw par_NPC Appearance

var anim_length = 9;
var frame_size = 64;
var anim_speed = 12;

if		(moveX < 0){ y_frame = 9;	}	//Moving Left
else if (moveX > 0){ y_frame = 11;	}	//Moving Right
else if (moveY < 0){ y_frame = 8;	}	//Moving Up
else if (moveY > 0){ y_frame = 10;	}	//Moving Down
else	{			x_frame = 0;	}	//Idle

var xx = x-x_offset;
var yy = y-y_offset;

// ----- draw character shadow
if(spr_shadow != -1) { draw_sprite(spr_shadow, 0, x, y); }


// ----- increment frame for animation
if(x_frame  + (anim_speed/60) < anim_length)	{ x_frame += (anim_speed/60); }
else							{ x_frame = 1;	}

// ----- draw character BASE
if(spr_base != -1) { draw_sprite_part(spr_base, 0, floor(x_frame)*frame_size, y_frame*frame_size, frame_size, frame_size, xx, yy); }
// ----- draw character FEET
if(spr_feet != -1) {draw_sprite_part(spr_feet, 0, floor(x_frame)*frame_size, y_frame*frame_size, frame_size, frame_size, xx, yy); }
// ----- draw character LEGS
if(spr_legs != -1) {draw_sprite_part(spr_legs, 0, floor(x_frame)*frame_size, y_frame*frame_size, frame_size, frame_size, xx, yy); }
// ----- draw character TORSO
if(spr_torso != -1) {draw_sprite_part(spr_torso, 0, floor(x_frame)*frame_size, y_frame*frame_size, frame_size, frame_size, xx, yy); }
// ----- draw character HAIR
if(spr_hair != -1) {draw_sprite_part(spr_hair, 0, floor(x_frame)*frame_size, y_frame*frame_size, frame_size, frame_size, xx, yy); }