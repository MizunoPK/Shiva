/// @func: generateForest
/// @description: Populates the board with forests. It picks a tile and attempts to replace it and surrounding tiles with forest.

pickedTile = false;

while(!pickedTile) {
randTile = instance_find(obj_PlainsTile, irandom(instance_number(obj_PlainsTile) - 1));

collisionTest = collision_circle(randTile.x, randTile.y, tileDiameter+1, obj_ForestTile, false, true);
	if(collisionTest == noone) {
		pickedTile = true;
	}
}

tile = instance_create_layer(randTile.x,randTile.y,"Instances",obj_ForestTile);


//With a 66% chance per tile, replace the connecting Plains tiles with forests. (Cannot replace other tiles)

//Upper
collisionTest = collision_circle(randTile.x, randTile.y-tileDiameter, 1, obj_PlainsTile, false, true);
if(random(100) > 66 && collisionTest != noone) {
	tile = instance_create_layer(randTile.x,randTile.y-tileDiameter,"Instances",obj_ForestTile);
}
//Lower
collisionTest = collision_circle(randTile.x, randTile.y+tileDiameter, 1, obj_PlainsTile, false, true);
if(random(100) > 66 && collisionTest != noone) {
	tile = instance_create_layer(randTile.x,randTile.y+tileDiameter,"Instances",obj_ForestTile);
}
//Above Left
collisionTest = collision_circle(randTile.x-tileEdgeWidth, randTile.y-tileRadius, 1, obj_PlainsTile, false, true);
if(random(100) > 66 && collisionTest != noone) {
	tile = instance_create_layer(randTile.x-tileEdgeWidth,randTile.y-tileRadius,"Instances",obj_ForestTile);
}
//Below Left
collisionTest = collision_circle(randTile.x-tileEdgeWidth, randTile.y+tileRadius, 1, obj_PlainsTile, false, true);
if(random(100) > 66 && collisionTest != noone) {
	tile = instance_create_layer(randTile.x-tileEdgeWidth,randTile.y+tileRadius,"Instances",obj_ForestTile);
}
//Above Right
collisionTest = collision_circle(randTile.x+tileEdgeWidth, randTile.y-tileRadius, 1, obj_PlainsTile, false, true);
if(random(100) > 66 && collisionTest != noone) {
	tile = instance_create_layer(randTile.x+tileEdgeWidth,randTile.y-tileRadius,"Instances",obj_ForestTile);
}
//Below Right
collisionTest = collision_circle(randTile.x+tileEdgeWidth, randTile.y+tileRadius, 1, obj_PlainsTile, false, true);
if(random(100) > 66 && collisionTest != noone) {
	tile = instance_create_layer(randTile.x+tileEdgeWidth,randTile.y+tileRadius,"Instances",obj_ForestTile);
}