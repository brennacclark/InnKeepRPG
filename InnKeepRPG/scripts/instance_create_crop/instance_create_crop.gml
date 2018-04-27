///@description instance_create_crop
///@arg x
///@arg y
///@arg crop_type

var cs = crops.cellSize;
var gx = argument0 div cs;
var gy = argument1 div cs; 
var i_grid = crops.ds_crops_instances;
var cell = i_grid[# gx, gy];

if(cell == 0){
	var xx = gx*cs;
	var yy = gy*cs;

	//----- check for soil
	var data = exist_layer_tile(argument0, argument1, "T_Soil")

	if(data = 0){
		show_debug_message("SystemPrint: There is no soil here");
		return false;
	} else {
		show_debug_message("SystemPrint: There is soil here");
	}


	var inst = instance_create_layer(xx+(cs/2), yy+(cs/2), "Instances", obj_crop);
	i_grid[#gx, gy] = inst;

	//----- give the crop its characteristics
	with(inst){
		cropType = argument2;
		growthStageDuration = crops.ds_crops_types[# 0, cropType];
	}

	return inst;
	} else {
		show_debug_message("SystemPrint: There is alreadys something here.");
		return false;
	}