/// @description Insert description here
// You can write your code in this editor


if keyboard_check(ord("W")) {
	y = y - CAMERA_SPEED;	
}

if(keyboard_check(ord("S"))) {
	y = y + CAMERA_SPEED;	
}

if(keyboard_check(ord("A"))) {
	x = x - CAMERA_SPEED;	
}

if(keyboard_check(ord("D"))) {
	x = x + CAMERA_SPEED;	
}