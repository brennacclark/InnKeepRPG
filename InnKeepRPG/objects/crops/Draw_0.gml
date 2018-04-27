/// @description Insert description here
// You can write your code in this editor
if(!planting) exit; 

var cs = cellSize;
var gx = (mx div cs); 
var gy = (my div cs); 

var c = c_red;
var cell = ds_crops_instances[# gx, gy];

if( cell == 0){
	var data = exist_layer_tile(mx, my, "T_Soil");
	if( data != 0){ c = c_lime; }
}

var xx = gx*cs;
var yy = gy*cs;




draw_rectangle_color(xx, yy, xx+cs, yy+cs, c, c, c, c, true);


draw_sprite(spr_crops_picked, selectCrop, xx+(cs/2), yy+(cs/2));