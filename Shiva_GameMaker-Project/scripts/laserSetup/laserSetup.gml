/// @func: laserSetup()
/// @description: This is called whenever a soldier changes to holding a laser and sets up needed variables
// @Author: Kai Mizuno

weapon = LASER
name = weapon + " " + SOLDIER

passiveUnit = false

eastSprite = s_Soldier_Laser_East // east facing sprite
northeastSprite = s_Soldier_Laser_NorthEast // northeast facing sprite
northSprite = s_Soldier_Laser_North // north facing sprite
southeastSprite = s_Soldier_Laser_SouthEast // south east facing sprite
southSprite = s_Soldier_Laser_South // south facing sprite
sprite_index = eastSprite // base sprite

damage = ATTACK_DAMAGE_1 // the amount of damage this unit deals
secondsBetweenHits = ATTACK_SPEED_5 // seconds between each hit
velocityMultiplier = SHOT_SPEED_4 // multiplier affecting the speed of the shots

invasionRoundMovementRange = INVASION_MOVEMENT_2 // the amount of tiles this unit can move to seek out a target between rounds

// Set this unit's projectiles
firingProjectile = o_Shot_Laser