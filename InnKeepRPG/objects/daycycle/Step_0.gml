/// @description Increment time

if(keyboard_check_pressed(ord("T"))){ time_pause = !time_pause; }
if(time_pause) exit;

//----- increment time
seconds += time_increment; 
minutes = seconds/60;
hours = minutes/60;

darkness = hours/24;

//----- cycle check
if(hours >= 24) {
	seconds = 0;
	day++;
	with(crops){ event_perform(ev_other, ev_user1); }
		if(day > monthlength){
			day = 1;
			season++;
			if( season > 4){
				season = 1; 
				year++;
			}
		}
}

