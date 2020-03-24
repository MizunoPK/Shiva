event_inherited()
mainSprite = spr_LandingTile
name = "Alien Landing Site"

// Resource Discovery:
explorable = true
resourceList = ds_list_create()
	// each value in the resourceList corresponds to a % chance of that resource getting discovered
	// values should add up to 100
	// format for the resource list:
	// [NOTHING, HUMAN, HUMAN WEAPON, ALIEN WEAPON, FOOD, RESARCH POINTS]
	ds_list_add(resourceList, 0, 0, 5, 55, 0, 45)