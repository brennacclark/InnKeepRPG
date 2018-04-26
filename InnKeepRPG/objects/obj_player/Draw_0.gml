///// @description Draw  Appearance


//// ----- total animation length
var anim_length = 9;	// 9 frames for this animation
var anim_speed = 12;	
var frame_size = 64;    //  64x64px frames


switch(facing){
	case dir.left:	y_frame = 9;	break;	//Moving Left
	case dir.right: y_frame = 11;	break;	//Moving Right
	case dir.up:	y_frame = 8;	break;	//Moving Up
	case dir.down:  y_frame = 10;	break;	//Moving Down
	case -1:		x_frame = 0;	break;	//Idle
}

var xx = x-x_offset;
var yy = y-y_offset;

//----- draw character shadow
if(spr_shadow != -1) { draw_sprite(spr_shadow, 0, x, y); }

//// ----- increment frame for animation. 64x64px
if(x_frame + (anim_speed/60) < anim_length){x_frame += anim_speed/60;}
else {x_frame=1;}


////// ----- draw character BASE
if(spr_base != -1) {draw_sprite_part(spr_base, 0, floor(x_frame) *frame_size, y_frame*frame_size, frame_size, frame_size, xx, yy); }
// ----- draw character FEET
if(spr_feet != -1) {draw_sprite_part(spr_feet, 0, floor(x_frame) *frame_size, y_frame*frame_size, frame_size, frame_size, xx, yy); }
// ----- draw character LEGS
if(spr_legs != -1) {draw_sprite_part(spr_legs, 0, floor(x_frame) *frame_size, y_frame*frame_size, frame_size, frame_size, xx, yy); }
// ----- draw character TORSO
if(spr_torso != -1) {draw_sprite_part(spr_torso, 0, floor(x_frame) *frame_size, y_frame*frame_size, frame_size, frame_size, xx, yy); }
// ----- draw character HAIR
if(spr_hair != -1) {draw_sprite_part(spr_hair, 0, floor(x_frame) *frame_size, y_frame*frame_size, frame_size, frame_size,  xx, yy); }




