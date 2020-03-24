occupier = noone // the instance occupying the tile
overlaySprite = s_TileOverlay
enemyOverlaySprite = s_EnemyTileOverlay
friendlyOverlaySprite = s_FriendlyTileOverlay

dialogColor = UNVISITED_DIALOG_COLOR
explored = false
// Resource Discovery:
explorable = false
resourceList = ds_list_create()
	// each value in the resourceList corresponds to a % chance of that resource getting discovered
	// values should add up to 100
	// format for the resource list:
	// [NOTHING, HUMAN, HUMAN WEAPON, ALIEN WEAPON, FOOD, RESARCH POINTS]
	ds_list_add(resourceList, 100, 0, 0, 0, 0, 0)

isFlyable = true;
isWalkable = true;