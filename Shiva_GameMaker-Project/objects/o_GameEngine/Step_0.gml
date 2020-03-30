/// @description Insert description here
// You can write your code in this editor


if (keyboard_check(ord("W")) or keyboard_check(vk_up)) {
	y = y - CAMERA_SPEED;	
}

if(keyboard_check(ord("S")) or keyboard_check(vk_down)) {
	y = y + CAMERA_SPEED;	
}

if(keyboard_check(ord("A")) or keyboard_check(vk_left)) {
	x = x - CAMERA_SPEED;	
}

if(keyboard_check(ord("D")) or keyboard_check(vk_right)) {
	x = x + CAMERA_SPEED;	
}