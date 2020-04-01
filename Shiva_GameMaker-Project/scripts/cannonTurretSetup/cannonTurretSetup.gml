/// @func: cannonTurretSetup()
/// @description: This is called whenever a UNMANNED CANNON turret needs to be initialized
// @Author: Kai Mizuno

mountable = true

passiveUnit = true

rightwardSprite = s_Turret_Cannon_Unmanned_Right // sprite facing rightward
sprite_index = rightwardSprite // base sprite

damage = 0 // the amount of damage this unit deals
secondsBetweenHits = 0 // seconds between each hit
velocityMultiplier = 0 // multiplier affecting the speed of the shots

// Set this unit's projectiles
firingProjectile = noone