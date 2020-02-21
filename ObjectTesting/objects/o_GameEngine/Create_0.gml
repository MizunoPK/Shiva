/// @description Empty game object that is the only thing placed in the room, and creates all the required objects

// Constants
defineConstants()


// Testing soldier shooting an alien
// Create a soldier
s1 = instance_create_layer( room_width/3, room_height/3, "Instances", o_Soldier)
// Create an alien
a1 = instance_create_layer( room_width/3 + 64 * 2, room_height/3, "Instances", o_Alien_Rudra)
with (s1) {
	currentTarget = other.a1
}
// Create an attack button
b1 = instance_create_layer( room_width/3 + 32, room_height/3 + 48, "Instances", o_AttackButton)
with (b1) {
	currentTarget = other.s1
}
b2 = instance_create_layer( room_width/3 - 32, room_height/3 + 48, "Instances", o_Change)
with (b2) {
	currentTarget = other.s1
}