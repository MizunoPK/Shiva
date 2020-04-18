/// @description Dispel fog if it is near human objects or spawn pod objects.
// You can write your code in this editor

if collision_circle(x, y, 64, o_Human, true, true)
	{
   instance_destroy();
   }
   
if collision_circle(x, y, 64, o_SpawnPod, true, true)
   {
   instance_destroy();
   }