/// @func: standardTurretMannedSetup()
/// @description: This is called whenever a standard MANNED turret needs to be initialized

eastSprite = s_Turret_Manual_Manned_East // east facing sprite
northeastSprite = s_Turret_Manual_Manned_NorthEast // northeast facing sprite
northSprite = s_Turret_Manual_Manned_North // north facing sprite
southeastSprite = s_Turret_Manual_Manned_SouthEast // south east facing sprite
southSprite = s_Turret_Manual_Manned_South // south facing sprite
westSprite = s_Turret_Manual_Manned_West // west facing sprite
northwestSprite = s_Turret_Manual_Manned_NorthWest // north west facing sprite
southwestSprite = s_Turret_Manual_Manned_SouthWest // south west facing sprite

damage = ATTACK_DAMAGE_2 // the amount of damage this unit deals
secondsBetweenHits = ATTACK_SPEED_4 // seconds between each hit
velocityMultiplier = SHOT_SPEED_4 // multiplier affecting the speed of the shots

// Set this unit's projectiles
firingProjectile = o_Shot_Standard