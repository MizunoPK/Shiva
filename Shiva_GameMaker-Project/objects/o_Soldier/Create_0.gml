// Argument 1: Friendly -> True, Alien -> False
// Argument 2: Health
event_inherited()
unitCreate( NO_WEAPON, true, HEALTH_2, true, MOVEMENT_VELOCITY_2, SIGHT_3, ATTACK_RANGE_2)
maxMovement = BASE_MOVEMENT_3
movementRange = maxMovement
unarmedSetup()
ds_list_add(global.listOfSoldiers, self)