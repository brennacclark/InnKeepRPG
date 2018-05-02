/// @description Insert description here
// You can write your code in this editor

var inst_num = instance_number(par_depthobject);
var dgrid = ds_depthgrid;

//------ resize grid
if (ds_grid_height(ds_depthgrid) != inst_num and inst_num > 0) {
	ds_grid_resize(dgrid, 2, inst_num);
}

//------ add instances to grid
var yy = 0; with(par_depthobject){
	dgrid[# 0, yy] = id;	
	dgrid[# 1, yy] = y;
	yy++;
}

//----- sort the grid in acending order
ds_grid_sort(dgrid, 1, true);

//----- loop thorugh the grid and draw 
//----- all the instances 

var inst; yy = 0; repeat(inst_num){
	// pull out the ID
	inst = dgrid [# 0, yy];
	// draw yourself
	with(inst){
		event_perform(ev_draw, 0);
	}
	
	yy++;
	
}