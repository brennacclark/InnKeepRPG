///@description create_crop_type
///@arg growth_stage_duration
///@arg cost

var argNum = argument_count;

if(!ds_exists(ds_crops_types,ds_type_grid)){
	ds_crops_types = ds_grid_create(argNum, 1);
	var height = 1;
} else {
	var height = ds_grid_height(ds_crops_types);
	ds_grid_resize(ds_crops_types, argNum, height+1);
	height += 1;
}

var i = 0; repeat(argNum){
	ds_crops_types[# x, y] = argument[i];
	i++;
}

