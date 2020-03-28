/// @func: cannonSetup()
/// @description: This is called whenever a soldier changes to holding a cannon and sets up needed variables
// @Author: Kai Mizuno

weapon = CANNON
name = weapon + " " + SOLDIER

passiveUnit = false

eastSprite = s_Soldier_Cannon_East // east facing sprite
northeastSprite = s_Soldier_Cannon_NorthEast // northeast facing sprite
northSprite = s_Soldier_Cannon_North // north facing sprite
southeastSprite = s_Soldier_Cannon_SouthEast // south east facing sprite
southSprite = s_Soldier_Cannon_South // south facing sprite
westSprite = s_Soldier_Cannon_West // west facing sprite
northwestSprite = s_Soldier_Cannon_NorthWest // north west facing sprite
southwestSprite = s_Soldier_Cannon_SouthWest // south west facing sprite
sprite_index = eastSprite // base sprite

damage = ATTACK_DAMAGE_4 // the amount of damage this unit deals
secondsBetweenHits = ATTACK_SPEED_1 // seconds between each hit
velocityMultiplier = SHOT_SPEED_1 // multiplier affecting the speed of the shots

invasionRoundMovementRange = INVASION_MOVEMENT_1 // the amount of tiles this unit can move to seek out a target between rounds

// Set this unit's projectiles
firingProjectile = o_Shot_Cannon