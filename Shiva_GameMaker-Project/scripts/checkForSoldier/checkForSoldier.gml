/// @func: checkForSoldier()
/// @description: This is called during the step event and checks if the turret is waiting for a soldier and if it's been given one
// @Author: Kai Mizuno
// Date Created: 2/22/19
// Last Updated: 2/22/19

if ( waitingForUnit and global.currentSelectedObject != noone ) {
	if ( global.currentSelectedObject.object_index == o_Soldier ) {
		if (name == STANDARD_TURRET) {
			standardTurretMannedSetup(global.currentSelectedObject)
		}
		else if ( name == CANNON_TURRET ) {
			cannonTurretMannedSetup(global.currentSelectedObject)
		}
		global.currentSelectedObject = self
		with (soldierButton) changeSoldierButton()
	}
	waitingForUnit = false

}