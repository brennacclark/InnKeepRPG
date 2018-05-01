///@description cutscene_change_xscale
///@arg obj_id
///@arg image_xscale*

var arg; 
var i = 0; repeat(argument_count){
	arg[i] = argument[i];
	i++;
}

if(argument_count > 1 ){
	with(argument0){
		image_xscale = argument1;
	}
} else {
	with(argument0){
		image_xscale = -image_xscale;
	}
}
cutscene_instance_destroy(inst);