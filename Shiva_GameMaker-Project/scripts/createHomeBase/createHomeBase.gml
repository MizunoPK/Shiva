/// @func createHomeBase
/// @description create event for the home base

global.homeBase = self

name = "Home Base" // the name of the unit
maxHealth = 1000 // health of the unit
currentHealth = maxHealth
isFriendly = true

status = "Inactive" // the status of the unit shown in the unit's info dialog

dialogColor = FRIENDLY_DIALOG_COLOR // the color that the unit's health will be displayed as