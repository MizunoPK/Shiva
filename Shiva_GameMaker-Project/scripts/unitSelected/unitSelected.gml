/// @func unitSelected()
/// @description checks if the unit is selected, and if it is then it moves the unit up to the selected unit layer

if (global.currentSelectedObject == self) {
	layer = layer_get_id("SelectedUnit")	
}
else {
	layer = layer_get_id("Units")	
}