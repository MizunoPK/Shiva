/// @func: generateForest
/// @description: Populates the board with forests. It picks a tile and attempts to replace it and surrounding tiles with mountains.

pickedTile = false;

while(!pickedTile) {
randTile = instance_find(obj_PlainsTile, irandom(instance_number(obj_PlainsTile) - 1));

collisionTest = collision_circle(randTile.x, randTile.y, tileDiameter+1, obj_MountainTile, false, true);
	if(collisionTest == noone) {
		pickedTile = true;
	}
}
randTile = instance_find(obj_PlainsTile, irandom(instance_number(obj_PlainsTile) - 1));

newTile = instance_create_layer(randTile.x,randTile.y,"Instances",obj_MountainTile);



//With a 50% chance per tile, replace the connecting Plains tiles with Mountains. (Cannot replace other tiles)

//Upper
collisionTest = collision_circle(randTile.x, randTile.y-tileDiameter, 1, obj_PlainsTile, false, true);
if(random(100) > 50 && collisionTest != noone) {
	tile = instance_create_layer(randTile.x,randTile.y-tileDiameter,"Instances",obj_MountainTile);
}
//Lower
collisionTest = collision_circle(randTile.x, randTile.y+tileDiameter, 1, obj_PlainsTile, false, true);
if(random(100) > 50 && collisionTest != noone) {
	tile = instance_create_layer(randTile.x,randTile.y+tileDiameter,"Instances",obj_MountainTile);
}
//Above Left
collisionTest = collision_circle(randTile.x-tileEdgeWidth, randTile.y-tileRadius, 1, obj_PlainsTile, false, true);
if(random(100) > 50 && collisionTest != noone) {
	tile = instance_create_layer(randTile.x-tileEdgeWidth,randTile.y-tileRadius,"Instances",obj_MountainTile);
}
//Below Left
collisionTest = collision_circle(randTile.x-tileEdgeWidth, randTile.y+tileRadius, 1, obj_PlainsTile, false, true);
if(random(100) > 50 && collisionTest != noone) {
	tile = instance_create_layer(randTile.x-tileEdgeWidth,randTile.y+tileRadius,"Instances",obj_MountainTile);
}
//Above Right
collisionTest = collision_circle(randTile.x+tileEdgeWidth, randTile.y-tileRadius, 1, obj_PlainsTile, false, true);
if(random(100) > 50 && collisionTest != noone) {
	tile = instance_create_layer(randTile.x+tileEdgeWidth,randTile.y-tileRadius,"Instances",obj_MountainTile);
}
//Below Right
collisionTest = collision_circle(randTile.x+tileEdgeWidth, randTile.y+tileRadius, 1, obj_PlainsTile, false, true);
if(random(100) > 50 && collisionTest != noone) {
	tile = instance_create_layer(randTile.x+tileEdgeWidth,randTile.y+tileRadius,"Instances",obj_MountainTile);
}