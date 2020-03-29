/// @func inventoryCreate()
/// @description create function for the inventory object

inventoryOpen = false // when the inventory button is pressed, this will turn true and begin to show the inventory
buttonsActive = false // boolean to indicate when we finish activating the buttons when the inventory opens
selectingTarget = false // is the player currently taking an inventory item and putting it on the board?
typeBeingPlaced = NOTHING_LABEL // category of what's being placed (nothing, weapon, or building)
whatsBeingPlaced = NOTHING_LABEL // the thing actually getting placed, this will be a string

banner = "Inventory"
bannerWidth = 126
bannerFont = f_inventoryMenu
inventoryButtons = ds_map_create()
inventoryButtonsKeys = ds_list_create() // a list of the keys in the inventoryButtons map, used to iterate through the map

// variables to be used for figuring out the location of each button relative to the inventory's top left corner
var row = 1
var buttonsInRow = 0 // keep track of the number of buttons in the row currently being made
widthBetweenButtons = INVENTORY_BUTTON_SIZE * 3
heightBetweenButtons = INVENTORY_BUTTON_SIZE * 2.5
topMargin = INVENTORY_BUTTON_SIZE / 2 
sideMargin = widthBetweenButtons / 2
var mostButtonsInARow = 0 // variable to keep track of the most buttons found in a row

// create the human buttons
for ( var i=0; i < ds_list_size(global.humanButtons); i++ ) {
	// go down a row if needed
	if ( buttonsInRow >= MAX_BUTTONS_PER_ROW ) {
		row++
		buttonsInRow = 0
		mostButtonsInARow = MAX_BUTTONS_PER_ROW
	}
	
	var buttonX = sideMargin + (INVENTORY_BUTTON_SIZE + widthBetweenButtons)*buttonsInRow
	var buttonY = topMargin + (heightBetweenButtons + INVENTORY_BUTTON_SIZE)*row
	var newButton = instance_create_layer(buttonX, buttonY, INVENTORY_BUTTON_LAYER, ds_list_find_value(global.humanButtons, i))
	newButton.owningInventory = self
	newButton.invX = buttonX
	newButton.invY = buttonY
	instance_deactivate_object(newButton)
	ds_map_add(inventoryButtons, newButton.itemName, newButton)
	ds_list_add(inventoryButtonsKeys, newButton.itemName)
	buttonsInRow++
}

if ( buttonsInRow > mostButtonsInARow ) {
	mostButtonsInARow = buttonsInRow
}

// create alien buttons
row++
buttonsInRow = 0
for ( var i=0; i < ds_list_size(global.alienButtons); i++ ) {
	// go down a row if needed
	if ( buttonsInRow >= MAX_BUTTONS_PER_ROW ) {
		row++
		buttonsInRow = 0
		mostButtonsInARow = MAX_BUTTONS_PER_ROW
	}
	
	var buttonX = sideMargin + (INVENTORY_BUTTON_SIZE + widthBetweenButtons)*buttonsInRow
	var buttonY = topMargin + (heightBetweenButtons + INVENTORY_BUTTON_SIZE)*row
	var newButton = instance_create_layer(buttonX, buttonY, INVENTORY_BUTTON_LAYER, ds_list_find_value(global.alienButtons, i))
	newButton.owningInventory = self
	newButton.invX = buttonX
	newButton.invY = buttonY
	instance_deactivate_object(newButton)
	ds_map_add(inventoryButtons, newButton.itemName, newButton)
	ds_list_add(inventoryButtonsKeys, newButton.itemName)
	buttonsInRow++
}

if ( buttonsInRow > mostButtonsInARow ) {
	mostButtonsInARow = buttonsInRow
}

// figure out the width of button rows
var topRowWidth = sideMargin + bannerWidth + INVENTORY_BUTTON_SIZE + MENU_EXIT_BUTTON_WIDTH + sideMargin
var maxButtonRowWidth = sideMargin + (INVENTORY_BUTTON_SIZE * mostButtonsInARow) + (widthBetweenButtons * (mostButtonsInARow - 1)) + sideMargin
if ( topRowWidth < maxButtonRowWidth ) {
	rowWidth = maxButtonRowWidth
}
else {
	rowWidth = topRowWidth
}
// figure out the height of the inventory
columnHeight = 2 * topMargin + (heightBetweenButtons + INVENTORY_BUTTON_SIZE)*row + INVENTORY_BUTTON_SIZE

// create the exit button
exitButton = instance_create_layer( x + ( rowWidth - sideMargin ), y + topMargin, INVENTORY_BUTTON_LAYER, o_ExitButton )
exitButton.invX = rowWidth - sideMargin
exitButton.invY = topMargin
instance_deactivate_object(exitButton)