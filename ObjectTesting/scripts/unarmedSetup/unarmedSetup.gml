// @func: unarmedSetup
// @description: This is called whenever a soldier changes to not holding a weapon and sets up needed variables
// @Author: Kai Mizuno
// Date Created: 2/21/19
// Last Updated: 2/21/19

passiveUnit = true

eastSprite = s_Soldier_Unarmed_East // east facing sprite
northeastSprite = s_Soldier_Unarmed_North_East // northeast facing sprite
northSprite = s_Soldier_Unarmed_North // north facing sprite
southeastSprite = s_Soldier_Unarmed_South_East // south east facing sprite
southSprite = s_Soldier_Unarmed_South // south facing sprite
sprite_index = eastSprite // base sprite

damage = 0 // the amount of damage this unit deals
secondsBetweenHits = 0 // seconds between each hit
velocityMultiplier = 0 // multiplier affecting the speed of the shots