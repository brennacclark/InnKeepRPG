/// @description Only draw darkness rectangle outside

switch(room){
	case rm_farm: 
	case rm_forest: draw_daylight = true; break;
	
	default: draw_daylight = false; break;
}

