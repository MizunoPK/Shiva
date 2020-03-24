/// @func getMaxSpawnPods()
/// @description returns the maximum number of spawn pods that can be spawned for the current round
// based off the equation: Minimum = 0.3 * 1.042^x + 3

return round(0.3 * power(1.042, global.roundNumber) + 3)