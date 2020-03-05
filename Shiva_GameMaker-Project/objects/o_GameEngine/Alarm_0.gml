/*index++
if (index >= ds_list_size(global.directionList))
	index = 0

with (directionTesting_unarmedSoldier) {
	updateDirection(ds_list_find_value(global.directionList, other.index))
}

alarm[0] = timebetweenImages * room_speed*/