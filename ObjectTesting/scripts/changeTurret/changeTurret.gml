// @func: changeTurret
// @description: This is called whenever a different manual turret is required
// @Author: Kai Mizuno
// Date Created: 2/21/19
// Last Updated: 2/21/19

//Arguements:
// argument0 = new weapon type (based off constant)

name = argument0

tmanned = false
with (soldierButton) {
	if (turretIsManned)
		other.tmanned = true
}

if ( name == STANDARD_TURRET ) {
	if ( tmanned )
		standardTurretMannedSetup(soldier)
	else
		standardTurretSetup()
}
else if ( name == CANNON_TURRET ) {
	if ( tmanned )
		cannonTurretMannedSetup(soldier)
	else
		cannonTurretSetup()
}