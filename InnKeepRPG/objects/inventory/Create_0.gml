/// @description Inventory + ds_player_info Init

depth = -1;
scale = 1;
show_inventory = false;

inv_slots = 17;
inv_slots_width = 8;
inv_slots_height = 3;

selected_slot = 0;
pickup_slot = -1;
m_slotx = 0;
m_sloty = 0;


x_buffer = 2;
y_buffer = 4;

gui_width = display_get_gui_width();
gui_height = display_get_gui_height();

cell_size = 32;

inv_UI_width = 288;
inv_UI_height = 192;

spr_inv_UI = spr_inventory_UI;
spr_inv_items = spr_inventory_items;

spr_inv_item_columns = sprite_get_width(spr_inv_items)/cell_size;
spr_inv_item_rows = sprite_get_height(spr_inv_items)/cell_size;

inv_UI_x = (gui_width * 0.5) - (inv_UI_width * 0.5 * scale);
inv_UI_y = (gui_height * 0.5) - (inv_UI_height * 0.5 * scale);

info_x = inv_UI_x + (9*scale);		// 9px for spr_inventory_UI
info_y = inv_UI_y + (9*scale);		// 9px for spr_inventory_UI

slots_x = info_x;
slots_y = inv_UI_y + (40*scale);	// 40px for spr_inventory_UI

desc_x = slots_x;
desc_y = inv_UI_y + (156*scale);	// 156px for spr_inventory_UI

draw_set_font(fnt_text_8);
string_H = string_height("M");		// get separation width for item description
									// next lines based on "M" height

//----- player info
//----- 0 = name
//----- 1 = gold
//----- 2 = pet 

ds_player_info = ds_grid_create(2, 3);
ds_player_info[# 0, 0] = "Name"
ds_player_info[# 0, 1] = "Gold"
ds_player_info[# 0, 2] = "Pet"

ds_player_info[# 1, 0] = "Player"
ds_player_info[# 1, 1] = irandom_range(0, 99);
ds_player_info[# 1, 2] = -1;

//----- inventory
//----- 0 = item
//----- 1 = qty

ds_inventory = ds_grid_create(2, inv_slots);


//----- items
enum item {
	none		= 0,
	tomato		= 1,
	potato		= 2, 
	carrot		= 3, 
	artichoke	= 4, 
	chilli		= 5, 
	gourd		= 6, 
	corn		= 7, 
	wood		= 8, 
	stone		= 9,
	bucket		= 10,
	chair		= 11,
	picture		= 12, 
	ace			= 13, 
	potion		= 14, 
	starfish	= 15, 
	mushroom	= 16, 
	height		= 17,	
}

#region create item description grid
ds_items_info = ds_grid_create(2, item.height);

//----- items names
var z = 0, i = 0;
ds_items_info[# z, i++] = "Nothing";
ds_items_info[# z, i++] = "Tomato";
ds_items_info[# z, i++] = "Potato";
ds_items_info[# z, i++] = "Carrot";
ds_items_info[# z, i++] = "Artichoke";
ds_items_info[# z, i++] = "Chilli";
ds_items_info[# z, i++] = "Gourd";
ds_items_info[# z, i++] = "Corn";
ds_items_info[# z, i++] = "Wood";
ds_items_info[# z, i++] = "Stone";
ds_items_info[# z, i++] = "Bucket";
ds_items_info[# z, i++] = "Chair";
ds_items_info[# z, i++] = "Picture";
ds_items_info[# z, i++] = "Axe";
ds_items_info[# z, i++] = "Potion";
ds_items_info[# z, i++] = "Starfish";
ds_items_info[# z, i++] = "Mushroom";

//----- items names
var z = 1, i = 0;
ds_items_info[# z, i++] = "Empty.";											// empty
ds_items_info[# z, i++] = "To-mah...may-to.";								// tomato
ds_items_info[# z, i++] = "Pre-chips.";										// potato
ds_items_info[# z, i++] = "Keep away from rabbits.";						// carrot
ds_items_info[# z, i++] = "The heartiest vegetable.";						// artichoke
ds_items_info[# z, i++] = "But oddly hot.";									// chilli
ds_items_info[# z, i++] = "Or is it an eggplant?";							// gourd
ds_items_info[# z, i++] = "Better Popped.";									// corn
ds_items_info[# z, i++] = "Knock on it.";									// wood						
ds_items_info[# z, i++] = "There's nothing written on it.";					// stone
ds_items_info[# z, i++] = "You could fit a bucket-full of water in here.";	// bucket
ds_items_info[# z, i++] = "This chair is just right.";						// chair
ds_items_info[# z, i++] = "Look at this photograph.";						// picture
ds_items_info[# z, i++] = "And my...";										// axe		
ds_items_info[# z, i++] = "This liquid looks...oozy.";						// potion
ds_items_info[# z, i++] = "Pointy.";											// starfish
ds_items_info[# z, i++] = "A fungus; not mush room for interpretation.";		// mushroom

#endregion


var yy = 0; repeat(inv_slots){
	ds_inventory[# 0,yy] = irandom_range(1, item.height-1); 
	ds_inventory[# 1,yy] = irandom_range(1,10);
	yy++;
}
