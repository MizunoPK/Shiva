// @func: shotSetup
// @description: This is called when a shot is created and sets up variables
// @Author: Kai Mizuno
// Date Created: 2/21/19
// Last Updated: 2/21/19

// Arguments:
// argument0: firing sprite
// argument1: explosion sprite

firingSprite = argument0
explosionSprite = argument1

xShotVelocity = 0
yShotVelocity = 0
damage = 0
isExploding = false

lingerTime = 3 // seconds until the shot automatically disappears (in case there's a shot out when the target dies)
alarm[0] = room_speed * lingerTime