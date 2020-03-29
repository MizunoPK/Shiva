///@func startGameOver()
///@description called when game over occurs

with (global.gameOverMenu) {
	isGameOver = true
	instance_activate_layer("GameOver_Buttons")
}