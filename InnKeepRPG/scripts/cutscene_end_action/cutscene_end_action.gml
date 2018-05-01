///@description cutscene_end_action

scene++;
if(scene > array_length_1d(scene_info)-1){
	instance_destroy();
	var inst_num = instance_number(par_depthobject);
	with(par_depthobject){
		moveCharacter = false;
	}
	exit;
}

event_perform(ev_other, ev_user0);