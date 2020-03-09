/// @func: rudraAttackSetup()
/// @description: This is called whenever a rudra is set to attack mode
// @Author: Kai Mizuno
// Date Created: 2/23/19
// Last Updated: 2/23/19

eastSprite = s_Alien_Rudra_Attack_East // east facing sprite
northeastSprite = s_Alien_Rudra_Attack_NorthEast // northeast facing sprite
northSprite = s_Alien_Rudra_Attack_North // north facing sprite
southeastSprite = s_Alien_Rudra_Attack_SouthEast // south east facing sprite
southSprite = s_Alien_Rudra_Attack_South // south facing sprite
sprite_index = eastSprite // base sprite

damage = ATTACK_DAMAGE_4
secondsBetweenHits = ATTACK_SPEED_3
image_speed = 1 / secondsBetweenHits