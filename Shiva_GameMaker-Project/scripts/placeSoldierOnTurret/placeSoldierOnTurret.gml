/// @func placeSoldierOnTurret(soldierInstance)
/// @description called when a turret is accepting a soldier
/// @arg soldierInstance the instance of the soldier being placed on the turret

soldierInstance = argument0 // the instance of the soldier being placed on the turret

// update the soldier's variables so that it's ready to be put on the turret
with (soldierInstance) {
	tileMovingTo.beingMovedTo = false
	tileMovingTo = noone
	isMoving = false
	image_speed = idleSpeed
	previousTile = tileLocation
	tileLocation = currentTarget
	currentTarget = noone
}
hunger = soldierInstance.hunger
maxHunger = soldierInstance.maxHunger
instance_deactivate_object(soldierInstance)

mountable = false
waitingForUnit = false

passiveUnit = false

if ( name == STANDARD_TURRET ) {
	standardTurretMannedSetup()
}
else if ( name == CANNON_TURRET ) {
	cannonTurretMannedSetup()
}