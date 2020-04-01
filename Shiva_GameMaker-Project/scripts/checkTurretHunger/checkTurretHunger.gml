/// @func checkTurretHunger()
/// @description checks the turret operator's hunger

if ( not waitingForUnit and hunger >= maxHunger ) {
	
	ds_list_delete(global.listOfSoldiers, ds_list_find_index(global.listOfSoldiers, soldierInstance))
	ds_list_delete(global.listOfHumans, ds_list_find_index(global.listOfHumans, soldierInstance))
	
	if ( name == STANDARD_TURRET ) {
		standardTurretSetup()
	}
	else if ( name == CANNON_TURRET ) {
		cannonTurretSetup()
	}
}