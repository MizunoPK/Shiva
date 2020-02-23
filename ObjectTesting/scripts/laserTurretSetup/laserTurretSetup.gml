// @func: laserTurretSetup
// @description: This is called whenever a laser turret needs to be initialized
// @Author: Kai Mizuno
// Date Created: 2/22/19
// Last Updated: 2/22/19

passiveUnit = false

rightwardSprite = s_Turret_Laser_Right // sprite facing rightward
sprite_index = rightwardSprite // base sprite

damage = ATTACK_DAMAGE_2 // the amount of damage this unit deals
secondsBetweenHits = ATTACK_SPEED_5 // seconds between each hit
velocityMultiplier = SHOT_SPEED_5 // multiplier affecting the speed of the shots

// Set this unit's projectiles
firingProjectile = o_Shot_Laser