// @func: laserSetup
// @description: This is called whenever a soldier changes to holding a laser and sets up needed variables
// @Author: Kai Mizuno
// Date Created: 2/21/19
// Last Updated: 2/21/19

passiveUnit = false

rightwardSprite = s_Soldier_Laser_Right // sprite facing rightward
sprite_index = rightwardSprite // base sprite

damage = ATTACK_DAMAGE_MID // the amount of damage this unit deals
secondsBetweenHits = ATTACK_SPEED_FAST // seconds between each hit
velocityMultiplier = ATTACK_SPEED_FAST // multiplier affecting the speed of the shots