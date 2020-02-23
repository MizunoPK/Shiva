// @func: manualTurretSetup
// @description: This is called whenever a manual turret is created
// @Author: Kai Mizuno
// Date Created: 2/22/19
// Last Updated: 2/22/19


waitingForUnit = false // has the player indicated they are about to pick a soldier to place on the turret?
previousTarget = noone // this will be used later when the button is pushed and the turret is waiting for a soldier, and this is used to check when a new target is chosen

// Make the soldier button
soldierButton = instance_create_layer(x, y + sprite_height, "Instances", o_SoldierButton)
with (soldierButton) {
	currentTarget = other
}