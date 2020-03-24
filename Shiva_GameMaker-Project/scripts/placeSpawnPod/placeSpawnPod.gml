/// @func placeSpawnPod()
/// @description place a spawn pod at a random location



do {
    var randomIndex = random(ds_list_size(global.board))
	var potentialSpawnPoint = ds_list_find_value(global.board, randomIndex)
} until ( potentialSpawnPoint.occupier == noone );

var newPod = instance_create_layer( potentialSpawnPoint.x, potentialSpawnPoint.y, "Units", o_SpawnPod )
newPod.tileLocation = potentialSpawnPoint
potentialSpawnPoint.occupier = newPod
global.spawnPods++