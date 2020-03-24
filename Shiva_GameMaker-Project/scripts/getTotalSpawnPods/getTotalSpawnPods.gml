/// @func getTotalSpawnPods()
/// @description returns the maximum number of spawn pods that can be on the board on the current round
// based off the equation: Minimum = 0.4 * 1.05^x + 4

return round(0.4 * power(1.05, global.roundNumber) + 4)