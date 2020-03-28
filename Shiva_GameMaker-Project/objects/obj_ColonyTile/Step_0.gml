if (global.isGenerating <= 100) {

	if(global.isGenerating == 0) {

	//add the tile to the board list
	ds_list_add(global.board, self)
	mainSprite = spr_ColonyTile

	// place the home base on the tile
	occupier = instance_create_layer(x,y,"Instances",o_HomeBase)
	with (occupier) {
		tileLocation = other
	}

	for(rings = 1; rings <= BOARD_RINGS; rings++) {
		generateRing(rings);	
		}
	}

	if(global.isGenerating >= 1 && global.isGenerating <= 30) {
		generateForest();	
	}

	if(global.isGenerating >= 31 && global.isGenerating <= 45) {
		generateMountain();	
	}

	if(global.isGenerating >= 46 && global.isGenerating <= 55) {
		generateLake();	
	}

	if(global.isGenerating >= 50 && global.isGenerating <= 59) {
		generateCity();	
	}

	if(global.isGenerating >= 60 && global.isGenerating <= 69) {
		generateLanding();	
	}

	if(global.isGenerating >= 70 && global.isGenerating <= 79) {
		generateBattleground();	
	}

	global.isGenerating++;

	// once we finish generating: call the finishedGenerating function, which contains everything we want to do after the map generates
	if(global.isGenerating == 100) {
		finishedGenerating();
	}

}