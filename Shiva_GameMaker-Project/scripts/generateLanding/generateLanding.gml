/// @func: generateLanding
/// @description: Populates the board with landing grounds.

pickedTile = 0;

while(pickedTile == 0) {
	randTile = instance_find(obj_PlainsTile, irandom(instance_number(obj_PlainsTile) - 1));

	collisionTest = collision_circle(randTile.x, randTile.y, 1+(tileDiameter*3), obj_CityTile, true, true);
	if(collisionTest != noone) {
		break;
	}
	collisionTest = collision_circle(randTile.x, randTile.y, 1+(tileDiameter*3), obj_ColonyTile, true, true);
	if(collisionTest != noone) {
		break;
	}	

	pickedTile = 1;

}

tile = instance_create_layer(randTile.x,randTile.y,"Instances",obj_LandingTile);