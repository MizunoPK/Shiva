///generateRing(argument0)

/// @func: generateStaticRing
/// @description: Generates rings of static plains tiles around the colony tile. Static tiles cannot be replaced.

ringNumber = argument0;

tile = instance_create_layer(x,y-(tileDiameter*ringNumber),"Instances",obj_PlainsStaticTile);

for(i = 0; i < ringNumber; i++) {
	tile = instance_create_layer(x-(tileEdgeWidth*ringNumber)+(tileEdgeWidth*i),y-(tileRadius*ringNumber)-(tileRadius*i),"Instances",obj_PlainsStaticTile);
}

for(i = 0; i < ringNumber; i++) {
	tile = instance_create_layer(x-(tileEdgeWidth*ringNumber)+(0*i),y+(tileRadius*ringNumber)-(tileDiameter*i),"Instances",obj_PlainsStaticTile);
}

for(i = 0; i < ringNumber; i++) {
	tile = instance_create_layer(x-(tileEdgeWidth*i),y+(tileDiameter*ringNumber)-(tileRadius*i),"Instances",obj_PlainsStaticTile);
}

for(i = 0; i < ringNumber; i++) {
	tile = instance_create_layer(x+(tileEdgeWidth*ringNumber)-(tileEdgeWidth*i),y+(tileRadius*ringNumber)+(tileRadius*i),"Instances",obj_PlainsStaticTile);
}

for(i = 0; i < ringNumber; i++) {
	tile = instance_create_layer(x+(tileEdgeWidth*ringNumber)+(0*i),y-(tileRadius*ringNumber)+(tileDiameter*i),"Instances",obj_PlainsStaticTile);
}

for(i = 1; i < ringNumber; i++) {
	tile = instance_create_layer(x+(tileEdgeWidth*i),y-(tileDiameter*ringNumber)+(tileRadius*i),"Instances",obj_PlainsStaticTile);
}