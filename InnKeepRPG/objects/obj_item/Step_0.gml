/// @description Move dropped item to its drop location

if(drop_move){	//----- while drop_move is true move the item to goal
	x = lerp(x, goal_x, 0.1);
	y = lerp(y, goal_y, 0.1);
	
	if(abs(x - goal_x) < 1 and abs(y - goal_y) < 1){ drop_move = false;}
} else {		//----- item is dropped in its final location. Check for pickups.
	
	if(!keyboard_check(ord("O"))) exit;
	
	var px = obj_player.x;
	var py = obj_player.y;
	var r =  32;
	if(point_in_rectangle(px, py, x-r, y-r, x+r, y+r)){
		//----- are we on top of the player?
		r = 2;
		if(!point_in_rectangle(px, py, x-r, y-r, x+r, y+r)){
			//----- move towards the player for pickup
				x = lerp(x, px, 0.1);
				y = lerp(y, py, 0.1);
		} else {
			var in = item_num;
			
			with(inventory){
				var ds_inv = ds_inventory;
				var picked_up = false;
				
				//----- item type exits in inventory
				var yy = 0; repeat(inv_slots){
					if(ds_inv[# 0, yy] == in) {
						ds_inv[# 1, yy] += 1;
						picked_up = true;
						break;
					}else {
						yy++;
					}
				}
				
				//----- add the item to empty inventory slot
				if(!picked_up){
					yy = 0; repeat(inv_slots){
						if(ds_inv[# 0, yy] == item.none) {
							ds_inv[# 0, yy] += in;
							ds_inv[# 1, yy] += 1;
							picked_up = true;
							break;
						}else {
							yy++;
						}
					}
				}
					
				
			}
			
			//----- destroy item
			if(picked_up){
				instance_destroy();
				show_debug_message("SystemPrint: Picked up an item");
			}
		}
	}
}
