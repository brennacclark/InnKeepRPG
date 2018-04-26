/// @description Initialize NPC_PARENT


// ----- npc sprite sheets
spr_base	= -1;
spr_feet	= -1;
spr_legs	= -1;
spr_torso	= -1;
spr_hair	= -1;
spr_shadow	= spr_character_shadow;


// ----- npc coordinates
x_frame = 0;
y_frame = 704;


moveX = 0;
moveY = 0;


// -----  offset for collision mask
x_offset = sprite_get_xoffset(mask_index);
y_offset = sprite_get_yoffset(mask_index);


// ----- npc speed
spd = 1;

// ----- npc trigger random movement
alarm[1] = 1;



