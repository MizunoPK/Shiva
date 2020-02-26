///generateRing(argument0)

ringNumber = argument0;

instance_create_layer(x,y-(64*ringNumber),"Instances",obj_PlainsTile);

for(i = 0; i < ringNumber; i++) {
	instance_create_layer(x-(50*ringNumber)+(50*i),y-(32*ringNumber)-(32*i),"Instances",obj_PlainsTile);
}

for(i = 0; i < ringNumber; i++) {
	instance_create_layer(x-(50*ringNumber)+(0*i),y+(32*ringNumber)-(64*i),"Instances",obj_PlainsTile);
}

for(i = 0; i < ringNumber; i++) {
	instance_create_layer(x-(50*i),y+(64*ringNumber)-(32*i),"Instances",obj_PlainsTile);
}

for(i = 0; i < ringNumber; i++) {
	instance_create_layer(x+(50*ringNumber)-(50*i),y+(32*ringNumber)+(32*i),"Instances",obj_PlainsTile);
}

for(i = 0; i < ringNumber; i++) {
	instance_create_layer(x+(50*ringNumber)+(0*i),y-(32*ringNumber)+(64*i),"Instances",obj_PlainsTile);
}

for(i = 1; i < ringNumber; i++) {
	instance_create_layer(x+(50*i),y-(64*ringNumber)+(32*i),"Instances",obj_PlainsTile);
}