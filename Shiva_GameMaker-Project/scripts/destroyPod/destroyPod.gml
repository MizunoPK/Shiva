/// @func destroyPod(pod)
/// @description destroys the pod instance passed in
/// @param pod the pod being destroyed

var pod = argument0
pod.tileLocation.occupier = noone
instance_destroy(pod)
global.spawnPods = global.spawnPods - 1