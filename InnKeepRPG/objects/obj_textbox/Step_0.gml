/// @description Increment text box page

if(keyboard_check_pressed(interact_key)){
	if(counter < str_len) { counter = str_len; } // if we press interact before all text is displayed
	else if(page < array_length_1d(text) -1){
		page++;
		event_perform(ev_other, ev_user1);
	} else {
		instance_destroy();
	}
}