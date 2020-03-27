/// @func checkIfOpen()
/// @description this is a step event function for the inventory to close the inventory when the user clicks something outside of it

if ( inventoryOpen and global.currentSelectedObject != self) {
	inventoryOpen = false
}