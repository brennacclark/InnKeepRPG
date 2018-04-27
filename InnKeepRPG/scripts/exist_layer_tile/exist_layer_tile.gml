///@description exist_layer_tile
///@arg x
///@arg y
///@arg layer


var lay_id = layer_get_id(argument2);
var map_id = layer_tilemap_get_id(lay_id);
var data = tilemap_get_at_pixel(map_id, argument0, argument1);

return data;
