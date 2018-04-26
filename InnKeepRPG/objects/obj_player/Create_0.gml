/// @description Initialize PLayer

// ----- player sprite sheets
spr_base	= spr_base_female_1;
spr_feet	= spr_feet_female_brown_boots;
spr_legs	= spr_legs_female_red_pants
spr_torso	= spr_torso_female_brown_tunic;
spr_hair	= spr_hair_female_pony_brown;
spr_shadow	= spr_character_shadow;


// ----- player coordinates
x_frame = 0;
y_frame = 704;


// -----  offset for collision mask
x_offset = sprite_get_xoffset(mask_index);
y_offset = sprite_get_yoffset(mask_index);



// ----- player speed
spd = 2;



