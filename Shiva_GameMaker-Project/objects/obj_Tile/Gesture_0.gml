// only let the tile be selectable if there is nothing occupying it
// without this statement, objects on the tile will not be properly selectable
if (occupier == noone and instance_position(mouse_x,mouse_y,all) == self )
	toggleSelection()