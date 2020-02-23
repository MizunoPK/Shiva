// @func: soldierButtonPressed
// @description: This is called whenever a button is pressed
// @Author: Kai Mizuno
// Date Created: 2/22/19
// Last Updated: 2/22/19

// if the turret is currently unmanned: wait for a soldier
if ( !turretIsManned ) {
	with (currentTarget) {
		waitingForUnit = true
		global.currentSelectedObject = noone
	}
}
// if the turret is currently manned: remove the soldier
else {
	with(currentTarget)  { 
		instance_activate_object(soldier)
		standardTurretSetup()
	}
	changeSoldierButton()
}