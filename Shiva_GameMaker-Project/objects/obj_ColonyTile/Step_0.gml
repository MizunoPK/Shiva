/// @description This step function handles the board generation centered on the colony tile.
if (global.isGenerating <= 100) {

	if(global.isGenerating == 0) {

	//add the tile to the board list
	ds_list_add(global.board, self)
	mainSprite = spr_ColonyTile

	// Generate 2 static rings around the colony. These cannot be replaced.
	for(rings = 1; rings <= 2; rings++) {
		generateStaticRing(rings);	
		}
	
	// Generate the rest of the rings around the colony. These can be replaced.
	for(rings = 3; rings <= BOARD_RINGS; rings++) {
		generateRing(rings);	
		}

	}

	if(global.isGenerating >= 1 && global.isGenerating <= 20) {
		generateForest();	
	}

	if(global.isGenerating >= 31 && global.isGenerating <= 40) {
		generateMountain();	
	}

	if(global.isGenerating >= 46 && global.isGenerating <= 52) {
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