// @func: unarmedSetup
// @description: This is called whenever a soldier changes to not holding a weapon and sets up needed variables
// @Author: Kai Mizuno
// Date Created: 2/21/19
// Last Updated: 2/21/19

passiveUnit = true

rightwardSprite = s_Soldier_Unarmed_Right // sprite facing rightward
sprite_index = rightwardSprite // base sprite

damage = 0 // the amount of damage this unit deals
secondsBetweenHits = 0 // seconds between each hit
velocityMultiplier = 0 // multiplier affecting the speed of the shots