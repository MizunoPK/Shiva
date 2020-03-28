/// @func discoveredHumanWeapon()
/// @description called when a tile is explored and a human weapon is found

var pistolIndex = 0
var machineGunIndex = 1
var turretIndex = 2
var wallIndex = 3

// populate possible resources
var possibleWeapons = ds_list_create()
for (var i=0; i < ds_list_size(global.HUMAN_WEAPON_CHANCES); i++) {
	for (var j=0; j < ds_list_find_value(global.HUMAN_WEAPON_CHANCES, i); j++) {
		ds_list_add(possibleWeapons, i)
	}
}

// get a random weapon
var foundWeaponRandomIndex = irandom( ds_list_size(possibleWeapons) - 1 )
var foundWeaponIndex = ds_list_find_value(possibleWeapons, foundWeaponRandomIndex)
var newWeapon = ""

// determine which weapon it is
switch (foundWeaponIndex) {
    case pistolIndex:
        newWeapon = PISTOL
        break;
	case machineGunIndex:
        newWeapon = MACHINE_GUN
        break;
	case turretIndex:
        newWeapon = STANDARD_TURRET
        break;
	case wallIndex:
        newWeapon = WALL
        break;
    default:
        break;
}

with (global.inventory) updateStock(newWeapon, 1)
var newText = "You found a " + newWeapon + "!"

if ( justExplored ) {
	dialogText = dialogText + "\n" + newText
}
else {
	dialogText = newText
}