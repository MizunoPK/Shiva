/// @func findSmallestIndex(list)
/// @description return the index of the smallest number in the given list

var list = argument0
var index = -1
var length = 0

for (var i=0 ; i < ds_list_size(list) ; i++ ) {
	var potentialLength = ds_list_find_value(list, i)
	if ( index == -1 or  potentialLength < length ) {
		index = i
		length = potentialLength
	}
}


return index