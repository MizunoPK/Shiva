/// @func updateStock(itemName, valueChanged)
/// @description finds the inventory item for itemName and adds valueChanged to the itemQuantity
/// @param itemName - name of the item being stocked
/// @param valueChanged - how much (postive or negative) the stock is changing


var itemName = argument0
var valueChanged = argument1

var stockButton = ds_map_find_value( inventoryButtons, itemName )
stockButton.itemQuantity += valueChanged