/// @description Insert description here
// You can write your code in this editor

if(isGenerating == 1) {

for(rings = 1; rings <= 15; rings++) {
	scr_generateRing(rings);	
}

isGenerating = 0;
calculateAdjacencies()
}