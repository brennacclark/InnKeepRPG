///@description create_cutscene
///@arg scene_info

var inst = instance_create_layer(0, 0, "Triggers", obj_cutscene);
with(inst){
	scene_info = argument0;
	event_perform(ev_other, ev_user0);
}
