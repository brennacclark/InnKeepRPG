/// @description Cutscene Init
scene_info	= -1;
scene		= 0;


timer = 0;

scene_info = [
	[create_box_at_mouse],
	[cutscene_wait, 2],
];

event_perform(ev_other, ev_user0);


x_dest = -1;
y_dest = -1;

