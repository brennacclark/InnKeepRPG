/// @description Cutscene Init
scene_info	= -1;
scene		= 0;


timer = 0;


x_dest = -1;
y_dest = -1;

var inst_num = instance_number(par_depthobject);

//------ add instances to grid
with(par_depthobject){
	moveCharacter = false;
}
