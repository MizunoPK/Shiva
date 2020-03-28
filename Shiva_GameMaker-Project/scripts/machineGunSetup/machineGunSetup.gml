/// @func: machineGunSetup()
/// @description: This is called whenever a soldier changes to holding a machine gun and sets up needed variables
// @Author: Kai Mizuno

weapon = MACHINE_GUN
name = weapon + " " + SOLDIER

passiveUnit = false

eastSprite = s_Soldier_MachineGun_East // east facing sprite
northeastSprite = s_Soldier_MachineGun_NorthEast // northeast facing sprite
northSprite = s_Soldier_MachineGun_North // north facing sprite
southeastSprite = s_Soldier_MachineGun_SouthEast // south east facing sprite
southSprite = s_Soldier_MachineGun_South // south facing sprite
westSprite = s_Soldier_MachineGun_West // west facing sprite
northwestSprite = s_Soldier_MachineGun_NorthWest // north west facing sprite
southwestSprite = s_Soldier_MachineGun_SouthWest // south west facing sprite
sprite_index = eastSprite // base sprite

damage = ATTACK_DAMAGE_2 // the amount of damage this unit deals
secondsBetweenHits = ATTACK_SPEED_4 // seconds between each hit
velocityMultiplier = SHOT_SPEED_4 // multiplier affecting the speed of the shots

invasionRoundMovementRange = INVASION_MOVEMENT_2 // the amount of tiles this unit can move to seek out a target between rounds

// Set this unit's projectiles
firingProjectile = o_Shot_Standard