/// @func: generateLake
/// @description: Populates the board with forests. It picks a tile and attempts to replace it and surrounding tiles with water.

pickedTile = false;

while(!pickedTile) {
randTile = instance_find(obj_PlainsTile, irandom(instance_number(obj_PlainsTile) - 1));

collisionTest = collision_circle(randTile.x, randTile.y, tileDiameter+1, obj_WaterTile, false, true);
	if(collisionTest == noone) {
		pickedTile = true;
	}
}
randTile = instance_find(obj_PlainsTile, irandom(instance_number(obj_PlainsTile) - 1));

newTile = instance_create_layer(randTile.x,randTile.y,"Instances",obj_WaterTile);



//With a 33% chance per tile, replace the connecting Plains tiles with Waters. (Cannot replace other tiles)

//Upper
collisionTest = collision_circle(randTile.x, randTile.y-tileDiameter, 1, obj_PlainsTile, false, true);
if(random(100) > 33 && collisionTest != noone) {
	tile = instance_create_layer(randTile.x,randTile.y-tileDiameter,"Instances",obj_WaterTile);
}
//Lower
collisionTest = collision_circle(randTile.x, randTile.y+tileDiameter, 1, obj_PlainsTile, false, true);
if(random(100) > 33 && collisionTest != noone) {
	tile = instance_create_layer(randTile.x,randTile.y+tileDiameter,"Instances",obj_WaterTile);
}
//Above Left
collisionTest = collision_circle(randTile.x-tileEdgeWidth, randTile.y-tileRadius, 1, obj_PlainsTile, false, true);
if(random(100) > 33 && collisionTest != noone) {
	tile = instance_create_layer(randTile.x-tileEdgeWidth,randTile.y-tileRadius,"Instances",obj_WaterTile);
}
//Below Left
collisionTest = collision_circle(randTile.x-tileEdgeWidth, randTile.y+tileRadius, 1, obj_PlainsTile, false, true);
if(random(100) > 33 && collisionTest != noone) {
	tile = instance_create_layer(randTile.x-tileEdgeWidth,randTile.y+tileRadius,"Instances",obj_WaterTile);
}
//Above Right
collisionTest = collision_circle(randTile.x+tileEdgeWidth, randTile.y-tileRadius, 1, obj_PlainsTile, false, true);
if(random(100) > 33 && collisionTest != noone) {
	tile = instance_create_layer(randTile.x+tileEdgeWidth,randTile.y-tileRadius,"Instances",obj_WaterTile);
}
//Below Right
collisionTest = collision_circle(randTile.x+tileEdgeWidth, randTile.y+tileRadius, 1, obj_PlainsTile, false, true);
if(random(100) > 33 && collisionTest != noone) {
	tile = instance_create_layer(randTile.x+tileEdgeWidth,randTile.y+tileRadius,"Instances",obj_WaterTile);
}