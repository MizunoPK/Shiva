// @func: createSoldierButton
// @description: This is called whenever a button is created
// @Author: Kai Mizuno
// Date Created: 2/22/19
// Last Updated: 2/22/19

currentTarget = noone // the turret that the button is attached to. This will be set by the turret upon creating the button

turretIsManned = false // does the turret have a soldier on it?
placeSoldierSprite = s_PlaceSoldier // sprite for when unmanned
removeSoldierSprite = s_RemoveSoldier // sprite for manned