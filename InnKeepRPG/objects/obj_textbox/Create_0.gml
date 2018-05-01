/// @description Textbox Init

box			= spr_textbox;
frame		= spr_portrait_frame;
portrait	= spr_portraits;
namebox		= spr_namebox;

box_width		= sprite_get_width(box);
box_height		= sprite_get_height(box);
port_width		= sprite_get_width(portrait);
port_height		= sprite_get_height(portrait);
namebox_width	= sprite_get_width(namebox);
namebox_height	= sprite_get_height(namebox);

port_x		= (global.game_width - box_width - port_width) * 0.5;
port_y		= (global.game_height*0.98) - port_height;
box_x		= port_x + port_width; 
box_y		= port_y;
namebox_x	= port_x;
namebox_y	= box_y - namebox_height;

portrait_index	= 0;
counter			= 0;
pause			= false;

x_buffer	= 12; // change for different textbox assets
y_buffer	= 8;
text_x		= box_x + x_buffer;
text_y		= box_y + y_buffer;
name_text_x = namebox_x + (namebox_width/2);
name_text_y = namebox_y + (namebox_height/2);

text[0]	= "Can you help your uncle build the tavern into a legendary inn? It won't be easy. Ever since the river stopped running, the town has been unable to maintain its way of life. The once-bustling inn is now a ghost-town, and the old fort on the hill lies in shambles. But Rivertown seems full of opportunity. ";
text[1] = "With a little dedication, you might just be the one to restore the frontier to greatness!"
page	= 0;
name	= "name";
voice	= snd_voice1;

interact_key = ord("E");

text_col		= c_black;
name_text_col	=  c_black;
font			= fnt_text_8;

draw_set_font(font);
text_height		= string_height("M");
text_max_width	= box_width - (2*x_buffer);

event_perform(ev_other, ev_user1);
