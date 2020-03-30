/// @func createGameOverMenu()
/// @description create function for game over menu

var buttonPremitiveList = ds_list_create()
ds_list_add(buttonPremitiveList, o_RestartGame, o_ExitGame) // add the buttons to this list in the order they should appear from top to bottom

isGameOver = false

bannerText = "Game Over!"
bannerFont = f_mainMenus
bannerColor = ENEMY_DIALOG_COLOR
bannerDedicatedHeight = 1.5 * BIG_BUTTON_HEIGHT 
topMargin = BIG_BUTTON_HEIGHT / 4

buttonList = ds_list_create()
for (var i=0; i < ds_list_size(buttonPremitiveList) ; i++) {
	ds_list_add(buttonList, instance_create_layer(x,y,"GameOver_Buttons", ds_list_find_value(buttonPremitiveList, i)))
}
instance_deactivate_layer("GameOver_Buttons")