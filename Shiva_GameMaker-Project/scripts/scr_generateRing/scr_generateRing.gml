///generateRing(argument0)

ringNumber = argument0;

tile = instance_create_layer(x,y-(tileDiameter*ringNumber),"Instances",obj_PlainsTile);
ds_list_add(global.board, tile)

for(i = 0; i < ringNumber; i++) {
	tile = instance_create_layer(x-(tileEdgeWidth*ringNumber)+(tileEdgeWidth*i),y-(tileRadius*ringNumber)-(tileRadius*i),"Instances",obj_PlainsTile);
	ds_list_add(global.board, tile)
}

for(i = 0; i < ringNumber; i++) {
	tile = instance_create_layer(x-(tileEdgeWidth*ringNumber)+(0*i),y+(tileRadius*ringNumber)-(tileDiameter*i),"Instances",obj_PlainsTile);
	ds_list_add(global.board, tile)
}

for(i = 0; i < ringNumber; i++) {
	tile = instance_create_layer(x-(tileEdgeWidth*i),y+(tileDiameter*ringNumber)-(tileRadius*i),"Instances",obj_PlainsTile);
	ds_list_add(global.board, tile)
}

for(i = 0; i < ringNumber; i++) {
	tile = instance_create_layer(x+(tileEdgeWidth*ringNumber)-(tileEdgeWidth*i),y+(tileRadius*ringNumber)+(tileRadius*i),"Instances",obj_PlainsTile);
	ds_list_add(global.board, tile)
}

for(i = 0; i < ringNumber; i++) {
	tile = instance_create_layer(x+(tileEdgeWidth*ringNumber)+(0*i),y-(tileRadius*ringNumber)+(tileDiameter*i),"Instances",obj_PlainsTile);
	ds_list_add(global.board, tile)
}

for(i = 1; i < ringNumber; i++) {
	tile = instance_create_layer(x+(tileEdgeWidth*i),y-(tileDiameter*ringNumber)+(tileRadius*i),"Instances",obj_PlainsTile);
	ds_list_add(global.board, tile)
}