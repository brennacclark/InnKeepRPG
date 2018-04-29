/// @description Debug, GameRestart, ExitGame

if(keyboard_check_pressed(ord("0"))) { debug = !debug; }

if(keyboard_check_pressed(ord("R"))) { game_restart(); }

if(keyboard_check_pressed(ord(vk_escape))) { game_end(); }

