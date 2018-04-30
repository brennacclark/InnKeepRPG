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
	
	switch(ii){
		case selected_slot:
			if(iitem > 0) {
				draw_sprite_part_ext(
					spr_inv_items, 0, sx, sy, cell_size, cell_size, 
					xx, yy, scale, scale, c_white, 1);
				}
				gpu_set_blendmode(bm_add);
				draw_sprite_part_ext(spr_inv_UI, 0, 0, 0, cell_size, cell_size, xx, yy, scale, scale, c_white, 0.3);
				gpu_set_blendmode(bm_normal);
			
		break;
		
		case pickup_slot:
			if(iitem > 0) {
				draw_sprite_part_ext(
					spr_inv_items, 0, sx, sy, cell_size, cell_size, 
					xx, yy, scale, scale, c_white, 0.2);
				}
		
		default:
				if(iitem > 0) {
					draw_sprite_part_ext(
						spr_inv_items, 0, sx, sy, cell_size, cell_size, 
						xx, yy, scale, scale, c_white, 1 );
				}
		break;
	}
	

	
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

//----- draw item description
var iinfo_grid = ds_items_info, description = "";
var iitem = inv_grid[# 0, selected_slot];
var sH = string_H;

if(iitem > 0){
	description = iinfo_grid[# 0, iitem] + ". " + iinfo_grid[# 1, iitem];
	//----- if the text goes longer than a width, nextline
	draw_set_font(fnt_text_12);
	c = c_black;
	draw_text_ext_color(desc_x, desc_y, description, sH, (inv_UI_width*scale) - (x_buffer*2), c, c, c, c, 1 );

}


if(pickup_slot != -1){
	//----- item
	iitem = inv_grid[# 0, pickup_slot];
	sx = (iitem mod spr_inv_item_columns)*cell_size;
	sy = (iitem div spr_inv_item_columns)*cell_size;
	draw_sprite_part_ext(
		spr_inv_items, 0, sx, sy, 
		cell_size, cell_size, mousex, mousey, 
		scale, scale, c_white, 1 );
		
	//----- draw item number 

	var inum = inv_grid[# 1, pickup_slot];
	draw_text_color(mousex+(cell_size*scale*0.5), mousey, string(inum), c, c, c, c, 1);
	
}