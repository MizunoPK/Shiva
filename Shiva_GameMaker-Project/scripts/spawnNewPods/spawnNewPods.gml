/// @func spawnNewPods()
/// @description trys to spawn pods for an invasion round

var maxOnBoard = getTotalSpawnPods()
// only spawn pods if we have not hit the maximum for that round
if ( global.spawnPods < maxOnBoard ) {
	var minPods = getMinSpawnPods()
	var maxPods = getMaxSpawnPods()
	var randomPods = irandom_range(minPods, maxPods)
	if ( randomPods+global.spawnPods > maxOnBoard )
		randomPods = maxOnBoard - global.spawnPods
	for (var i=0; i < randomPods; i++) {
		placeSpawnPod()
	}
}