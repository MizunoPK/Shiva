/// @func getMinSpawnPods()
/// @description returns the minimum number of spawn pods that can be spawned for the current round
// based off the equation: Minimum = 0.2 * 1.04^x + 1

return round(0.2 * power(1.04, global.roundNumber) + 1)