// @func: cannonTurretMannedSetup
// @description: This is called whenever a standard MANNED CANNON turret needs to be initialized
// @Author: Kai Mizuno
// Date Created: 2/22/19
// Last Updated: 2/22/19

// argument0 = the instance of the soldier being placed on the turret

soldier = argument0 // the instance of the soldier being placed on the turret
instance_deactivate_object(soldier) // deactivate the soldier while they are on the turret

passiveUnit = false

rightwardSprite = s_Turret_Cannon_Manned_Right // sprite facing rightward
sprite_index = rightwardSprite // base sprite

damage = ATTACK_DAMAGE_5 // the amount of damage this unit deals
secondsBetweenHits = ATTACK_SPEED_1 // seconds between each hit
velocityMultiplier = SHOT_SPEED_2 // multiplier affecting the speed of the shots

// Set this unit's projectiles
firingProjectile = o_Shot_Cannon