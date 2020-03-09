/// @func: pistolSetup()
/// @description: This is called whenever a soldier changes to holding a pistol and sets up needed variables
// @Author: Kai Mizuno
// Date Created: 2/21/19
// Last Updated: 2/21/19

passiveUnit = false // this unit can fight

eastSprite = s_Soldier_Pistol_East // east facing sprite
northeastSprite = s_Soldier_Pistol_NorthEast // northeast facing sprite
northSprite = s_Soldier_Pistol_North // north facing sprite
southeastSprite = s_Soldier_Pistol_SouthEast // south east facing sprite
southSprite = s_Soldier_Pistol_South // south facing sprite
sprite_index = eastSprite // base sprite

invasionRoundMovementRange = INVASION_MOVEMENT_2 // the amount of tiles this unit can move to seek out a target between rounds

damage = ATTACK_DAMAGE_3 // the amount of damage this unit deals
secondsBetweenHits = ATTACK_SPEED_3 // seconds between each hit
velocityMultiplier = SHOT_SPEED_3 // multiplier affecting the speed of the shots

// Set this unit's projectiles
firingProjectile = o_Shot_Standard