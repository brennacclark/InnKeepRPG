///@description create_box_at_house

if(mouse_check_button_pressed(mb_left)){
	instance_create_layer(mouse_x, mouse_y, "Instances", obj_box);
	cutscene_end_action();
}