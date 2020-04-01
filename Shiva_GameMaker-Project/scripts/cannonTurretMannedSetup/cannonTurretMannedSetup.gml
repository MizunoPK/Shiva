/// @func: cannonTurretMannedSetup()
/// @description: This is called whenever a standard MANNED CANNON turret needs to be initialized


rightwardSprite = s_Turret_Cannon_Manned_Right // sprite facing rightward
sprite_index = rightwardSprite // base sprite

damage = ATTACK_DAMAGE_5 // the amount of damage this unit deals
secondsBetweenHits = ATTACK_SPEED_1 // seconds between each hit
velocityMultiplier = SHOT_SPEED_2 // multiplier affecting the speed of the shots

// Set this unit's projectiles
firingProjectile = o_Shot_Cannon