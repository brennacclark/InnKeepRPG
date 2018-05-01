/// @description Insert description here
// You can write your code in this editor
if(!instance_exists(obj_cutscene)) {
	if(place_meeting(x,y,obj_player)){
		create_cutscene(t_scene_info);
	}
}