/// @func: changeSoldierButton()
/// @description: This is called whenever a soldier button is pressed and the action is performed successfully
// @Author: Kai Mizuno
// Date Created: 2/22/19
// Last Updated: 2/22/19

turretIsManned = !turretIsManned

// if we just placed a soldier on the turret, set the button to wait to remove the soldier
if ( turretIsManned ) {
	sprite_index = removeSoldierSprite
}
// if we just removed a soldier, set the button to wait for a new soldier
else {
	sprite_index = placeSoldierSprite
}