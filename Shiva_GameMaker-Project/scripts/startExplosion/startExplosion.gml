  /// @func: startExplosion()
/// @description: This is called when a shot is starting to explode
// @Author: Kai Mizuno
audio_play_sound(hitSound, 1, false)
sprite_index = explosionSprite
isExploding = true
xShotVelocity = 0
yShotVelocity = 0