/// @func calcTargets(tile, range)
/// @description clears global.targetsList and finds the new targets list for the given tile
/// @param tile The tile that needs a target list generated for
/// @param range the range of possible targets

tile = argument0
range = argument1

ds_list_clear(global.targetsList)
visited = ds_list_create()
findAllTargets(tile, range)