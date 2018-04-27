/// @description Insert description here
// You can write your code in this editor
if(room == rm_farm and ds_crops_instances == -1){
	ds_crops_instances = ds_grid_create(room_width div cellSize, room_height div cellSize);
}