/// @func newInvasionRound()
/// @description called when the Next Round button is pressed

global.invasionRound = true
global.enemiesOnBoard = 0
global.aliensInvaded = false
global.currentSelectedObject = noone

// spawn needed spawn pods
spawnNewPods()