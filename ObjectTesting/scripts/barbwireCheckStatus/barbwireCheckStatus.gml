// @func: barbwireCheckStatus
// @description: This is called during the barbwire's step event to check if it should be animating
// @Author: Kai Mizuno
// Date Created: 2/23/19
// Last Updated: 2/23/19

image_speed = 0

for ( i=0; i < ds_list_size(global.groundTroops); i++ ) {
	if ( collision_circle(x,y,sprite_width/2, ds_list_find_value(global.groundTroops, i), false, true ) ) {
		image_speed = 1
	}
}