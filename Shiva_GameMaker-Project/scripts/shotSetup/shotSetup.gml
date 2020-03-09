/// @func: shotSetup(explosionSprite)
/// @description: This is called when a shot is created and sets up variables
// @Author: Kai Mizuno

// Arguments:
/// @param explosionSprite explosion sprite

explosionSprite = argument0

xShotVelocity = 0
yShotVelocity = 0
damage = 0
isExploding = false

lingerTime = 3 // seconds until the shot automatically disappears (in case there's a shot out when the target dies)
alarm[0] = room_speed * lingerTime