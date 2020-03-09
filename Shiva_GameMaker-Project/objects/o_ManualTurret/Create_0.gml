// Argument 0: Name
// Argument 1: Friendly -> True, Alien -> False
// Argument 2: Health
// Argument 3: Passive -> True, Attacking -> False
// Argument 4: Moveable -> true, Immobile -> false
unitCreate( STANDARD_TURRET, true, 200, true, MOVEMENT_VELOCITY_0, SIGHT_2, ATTACK_RANGE_2)
manualTurretSetup()
standardTurretSetup()