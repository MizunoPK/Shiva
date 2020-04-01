/// @func createSpawnPod()
/// @description create event script for the alien spawn pod

isFriendly = false
attackable = false
attackPriority = ATTACK_PRIORITY_HIGH
placedAlien = false
instanceRound = global.roundNumber
dialogText = "Alien Spawn Pod"
dialogColor = ENEMY_DIALOG_COLOR
explosionSprite = s_SpawnPod_Exploding
exploding = false