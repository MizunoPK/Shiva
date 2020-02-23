// @func: rudraAttackSetup
// @description: This is called whenever a rudra is set to attack mode
// @Author: Kai Mizuno
// Date Created: 2/23/19
// Last Updated: 2/23/19

leftwardSprite = s_Alien_Rudra_Attack_Left // sprite facing rightward
sprite_index = leftwardSprite // base sprite

damage = ATTACK_DAMAGE_2
secondsBetweenHits = ATTACK_SPEED_3
image_speed = 1 / secondsBetweenHits

vectorVelocty = MOVEMENT_VELOCITY_0 // the velocity of the unit in the direction of targetAngle