// @func: pistolSetup
// @description: This is called whenever a soldier changes to holding a pistol and sets up needed variables
// @Author: Kai Mizuno
// Date Created: 2/21/19
// Last Updated: 2/21/19

passiveUnit = false // this unit can fight

rightwardSprite = s_Soldier_Pistol_Right // sprite facing rightward
sprite_index = rightwardSprite // base sprite

damage = ATTACK_DAMAGE_MID // the amount of damage this unit deals
secondsBetweenHits = ATTACK_SPEED_MID // seconds between each hit
velocityMultiplier = SHOT_SPEED_MID // multiplier affecting the speed of the shots

// Set this unit's projectiles
firingProjectile = o_Shot_Standard