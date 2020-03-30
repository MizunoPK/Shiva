// check the alien's health
checkAlienHealth()
// check if the alien's enemy was killed
checkEnemy()
// check the status of the alien
checkStatus()
// check if the alien should rotate its sprite
updateDirection()

// find an enemy to pursue
findEnemy()
// see if the alien should be moving
checkMovement()

//layer fixing for dialog box
if (global.currentSelectedObject) {
	layer = layer_get_id("SelectedUnit")	
}
else {
	layer = layer_get_id("Units")	
}