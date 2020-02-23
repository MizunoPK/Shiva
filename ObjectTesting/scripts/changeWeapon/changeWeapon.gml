// @func: changeWeapon
// @description: This is called whenever a soldier changes the weapon they are holding
// @Author: Kai Mizuno
// Date Created: 2/21/19
// Last Updated: 2/21/19

//Arguements:
// argument0 = new weapon type (based off constant)

name = argument0

if ( name == PISTOL ) {
	pistolSetup()
}
else if ( name == MACHINE_GUN ) {
	machineGunSetup()	
}
else if ( name == LASER ) {
	laserSetup()
}
else if ( name == CANNON ) {
	cannonSetup()
}
else {
	unarmedSetup()
}