index++
if ( index >= ds_list_size(weapons) ) {
	index = 0
}
with (currentTarget) {
	changeWeapon( ds_list_find_value( other.weapons, other.index ) )
}