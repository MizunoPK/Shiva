if(global.isGenerating == 99) {
ds_list_add(global.board, self);
//generateFog();
}

if(global.currentSelectedObject == self) {
layer = layer_get_id("SelectedTile");	
}
else {
layer = layer_get_id("Instances");	
}