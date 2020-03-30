/// @description The master code that starts generation
// You can write your code in this editor
event_inherited()
ds_list_add(global.board, self)
mainSprite = spr_ColonyTile
name = "Home Base"

//set depth of tiles properly
depth = global.tileDepth;

// place the home base on the tile
occupier = instance_create_layer(x,y,"Units",o_HomeBase)
with (occupier) {
	tileLocation = other
}

