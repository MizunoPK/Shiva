/// @description Insert description here
// You can write your code in this editor

if (global.inventory.inventoryOpen == false) {
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

}

else {
	//When the inventory is open set the camera position to be forced on the middle of the inventory.
x = 524;
y = 384;
}