/// @func: cannonTurretSetup()
/// @description: This is called whenever a UNMANNED CANNON turret needs to be initialized
// @Author: Kai Mizuno

soldierInstance = noone
hunger = -1
maxHunger = -1

instance_deactivate_object(foodButton)
foodButtonVisable = false

mountable = true
waitingForUnit = true

passiveUnit = true

eastSprite = s_Turret_Cannon_Unmanned_East // east facing sprite
northeastSprite = s_Turret_Cannon_Unmanned_NorthEast // northeast facing sprite
northSprite = s_Turret_Cannon_Unmanned_North // north facing sprite
southeastSprite = s_Turret_Cannon_Unmanned_SouthEast // south east facing sprite
southSprite = s_Turret_Cannon_Unmanned_South // south facing sprite
westSprite = s_Turret_Cannon_Unmanned_West // west facing sprite
northwestSprite = s_Turret_Cannon_Unmanned_NorthWest // north west facing sprite
southwestSprite = s_Turret_Cannon_Unmanned_SouthWest // south west facing sprite

damage = 0 // the amount of damage this unit deals
secondsBetweenHits = 0 // seconds between each hit
velocityMultiplier = 0 // multiplier affecting the speed of the shots

// Set this unit's projectiles
firingProjectile = noone