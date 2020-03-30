placeNewAlien()
newRoundPod()

//layer fixing for dialog box
if (global.currentSelectedObject) {
	layer = layer_get_id("SelectedUnit")	
}
else {
	layer = layer_get_id("Units")	
}