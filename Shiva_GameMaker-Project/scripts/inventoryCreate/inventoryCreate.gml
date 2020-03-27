/// @func inventoryCreate()
/// @description create function for the inventory object

inventoryOpen = false // when the inventory button is pressed, this will turn true and begin to show the inventory
buttonsActive = false // boolean to indicate when we finish activating the buttons when the inventory opens

banner = "Inventory"
inventoryButtons = ds_map_create()
inventoryButtonsKeys = ds_list_create() // a list of the keys in the inventoryButtons map, used to iterate through the map

// Create objects for all the inventory buttons and store them in the map
var humanButtonList = ds_list_create()
ds_list_add(humanButtonList, o_PistolButton) // list of the buttons for human entities
var alienButtonList = ds_list_create()
ds_list_add(alienButtonList, o_PistolButton) // list of the buttons for alien entities

var row = 0 // start on row 0, where the exit button and banned will be created
var buttonsInRow = 0 // keep track of the number of buttons in the row currently being made
var maxButtonsPerRow = MAX_BUTTONS_PER_ROW
var buttonPixelSize = BUTTON_SIZE
var widthBetweenButtons = buttonPixelSize / 2
var heightBetweenButtons = widthBetweenButtons
var buttonLayer = INVENTORY_BUTTON_LAYER
var mostButtonsInARow = 0 // variable to keep track of the most buttons found in a row

// create the exit button
exitButton = instance_create_layer( x + (buttonPixelSize + widthBetweenButtons)*maxButtonsPerRow*2, y + heightBetweenButtons, INVENTORY_BUTTON_LAYER, o_ExitButton )
instance_deactivate_object(exitButton)

// create the human buttons
for ( var i=0; i < ds_list_size(humanButtonList); i++ ) {
	// go down a row if needed
	if ( buttonsInRow >= maxButtonsPerRow ) {
		row++
		buttonsInRow = 0
		mostButtonsInARow = maxButtonsPerRow
	}
	
	var buttonX = x + widthBetweenButtons + (buttonPixelSize + widthBetweenButtons)*buttonsInRow
	var buttonY = y + (buttonPixelSize + heightBetweenButtons) * row 
	var newButton = instance_create_layer(buttonX, buttonY, buttonLayer, ds_list_find_value(humanButtonList, i))
	newButton.owningInventory = self
	instance_deactivate_object(newButton)
	ds_map_add(inventoryButtons, newButton.itemName, newButton)
	ds_list_add(inventoryButtonsKeys, newButton.itemName)
}

if ( buttonsInRow > mostButtonsInARow ) {
	mostButtonsInARow = buttonsInRow
}

// create alien buttons
row++
buttonsInRow = 0
for ( var i=0; i < ds_list_size(humanButtonList); i++ ) {
	// go down a row if needed
	if ( buttonsInRow >= maxButtonsPerRow ) {
		row++
		buttonsInRow = 0
		mostButtonsInARow = maxButtonsPerRow
	}
	
	var buttonX = x + widthBetweenButtons + (buttonPixelSize + widthBetweenButtons)*buttonsInRow
	var buttonY = y + (buttonPixelSize + heightBetweenButtons) * row 
	var newButton = instance_create_layer(buttonX, buttonY, buttonLayer, ds_list_find_value(alienButtonList, i))
	newButton.owningInventory = self
	instance_deactivate_object(newButton)
	ds_map_add(inventoryButtons, newButton.itemName, newButton)
	ds_list_add(inventoryButtonsKeys, newButton.itemName)
}

if ( buttonsInRow > mostButtonsInARow ) {
	mostButtonsInARow = buttonsInRow
}

// figure out the width of button rows
