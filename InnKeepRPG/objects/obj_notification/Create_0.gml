/// @description Notification Init

fade_away = false;
not_alpha = 1;
alarm [0] = room_speed*1.5;

ds_notifications = -1;

font = fnt_text_8
draw_set_font(font);
str_height = string_height("M");

gui_height = display_get_gui_height();
gui_width = display_get_gui_width();