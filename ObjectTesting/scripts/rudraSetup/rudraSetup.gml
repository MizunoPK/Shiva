/// @func: rudraSetup()
/// @description: This is called whenever a rudra is created or goes from attack mode to movement mode
// @Author: Kai Mizuno
// Date Created: 2/23/19
// Last Updated: 2/23/19

leftwardSprite = s_Alien_Rudra_Idle_Left // sprite facing rightward
sprite_index = leftwardSprite // base sprite

damage = ATTACK_DAMAGE_0 // damage delt each hit
secondsBetweenHits = ATTACK_SPEED_0 // seconds between each hit

maxVelocty = MOVEMENT_VELOCITY_2 // the max velocity of the unit in the direction of targetAngle
vectorVelocty = maxVelocty // the actual velocity of the unit (could be slowed down by outside forces)