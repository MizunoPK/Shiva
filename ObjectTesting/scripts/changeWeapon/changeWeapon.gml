// @func: changeWeapon
// @description: This is called whenever a soldier changes the weapon they are holding
// @Author: Kai Mizuno
// Date Created: 2/21/19
// Last Updated: 2/21/19

//Arguements:
// argument0 = new weapon type (based off constant"

newWeapon = argument0

if ( newWeapon == PISTOL ) {
	pistolSetup()
}
else if ( newWeapon == MACHINE_GUN ) {
	machineGunSetup()	
}
else if ( newWeapon == LASER ) {
	laserSetup()
}
else if ( newWeapon == CANNON ) {
	cannonSetup()
}