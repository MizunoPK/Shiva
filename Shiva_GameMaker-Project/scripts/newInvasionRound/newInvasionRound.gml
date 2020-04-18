/// @func newInvasionRound()
/// @description called when the Next Round button is pressed

global.invasionRound = true
global.enemiesOnBoard = 0
global.aliensInvaded = false
global.currentSelectedObject = noone

// play sound to start new round
//var loops = 5
roundStartLoop = audio_play_sound(snd_RoundStart, 3, true)
//var length = audio_sound_length(roundStartLoop)
//alarm[0] = room_speed * length * loops

// spawn needed spawn pods
spawnNewPods()