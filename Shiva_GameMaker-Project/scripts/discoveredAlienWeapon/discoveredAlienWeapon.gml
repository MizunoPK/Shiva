/// @func discoveredAlienWeapon()
/// @description called when a tile is explored and an alien weapon is found


var laserIndex = 0
var cannonIndex = 1
var laserTurretIndex = 2
var cannonTurretIndex = 3

// populate possible resources
var possibleWeapons = ds_list_create()
for (var i=0; i < ds_list_size(global.ALIEN_WEAPON_CHANCES); i++) {
	for (var j=0; j < ds_list_find_value(global.ALIEN_WEAPON_CHANCES, i); j++) {
		ds_list_add(possibleWeapons, i)
	}
}

// get a random weapon
var foundWeaponRandomIndex = irandom( ds_list_size(possibleWeapons) - 1 )
var foundWeaponIndex = ds_list_find_value(possibleWeapons, foundWeaponRandomIndex)
var newWeapon = ""

// determine which weapon it is
switch (foundWeaponIndex) {
    case laserIndex:
        newWeapon = LASER
        break;
	case cannonIndex:
        newWeapon = CANNON
        break;
	case laserTurretIndex:
        newWeapon = LASER_TURRET
        break;
	case cannonTurretIndex:
        newWeapon = CANNON_TURRET
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