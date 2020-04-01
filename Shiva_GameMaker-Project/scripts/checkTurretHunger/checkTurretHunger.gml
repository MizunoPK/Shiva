/// @func checkTurretHunger()
/// @description checks the turret operator's hunger

if ( not waitingForUnit and hunger >= maxHunger ) {
	if ( name == STANDARD_TURRET ) {
		standardTurretSetup()
	}
	else if ( name == CANNON_TURRET ) {
		cannonTurretSetup()
	}
}