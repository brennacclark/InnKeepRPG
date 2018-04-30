/// @description Draw + scale inventory gui 
if(!show_inventory) exit;

draw_sprite_part_ext(spr_inv_UI, 0, cell_size, 0, inv_UI_width, 
					inv_UI_height, inv_UI_x, inv_UI_y, scale, scale, c_white, 1);

//----- player info 

var info_grid = ds_player_info;

draw_set_font(fnt_text_24);
var c = c_black;
draw_text_color(info_x, info_y, info_grid[# 0, 0] + ": " + info_grid[# 1, 0], c,c,c,c, 1 );

draw_set_font(fnt_smalldigits);
yy = 0;
draw_text_color(info_x + (192*scale) + ((15+18)*scale*yy), 
	info_y, string(info_grid[# 1, 1]), c, c, c, c, 1
	);
	
//----- inventory
var ii, ix, iy, xx, sx, sy, yy, iitem;
var inv_grid = ds_inventory;
ii = 0; ix = 0; iy = 0;

repeat(inv_slots){
	//----- x,y location for slot
	
	xx = slots_x + ((cell_size+x_buffer)*ix*scale);
	yy = slots_y + ((cell_size+y_buffer)*iy*scale);

	//----- item
	iitem = inv_grid[# 0, ii];
	sx = (iitem mod spr_inv_item_columns)*cell_size;
	sy = (iitem div spr_inv_item_columns)*cell_size;
	
	//----- draw slot + item
	draw_sprite_part_ext(spr_inv_UI, 0, 0, 0, cell_size, cell_size, xx, yy, scale, scale, c_white, 1,);
	
	draw_sprite_part_ext(
		spr_inv_items, 0, sx, sy, cell_size, cell_size, 
		xx, yy, scale, scale, c_white, 1,
	);
		
	//----- draw item number 
	if(iitem > 0){
		var number = inv_grid[# 1, ii];
		draw_text_color(xx, yy, string(number), c, c, c, c, 1);
	}
	
	
	//----- increment
	ii++;
	ix = ii mod inv_slots_width;
	iy = ii div inv_slots_width;
}