levelButton = instance_create_layer(x + sprite_width , y, "UI_Buttons", o_LevelUp)
with(levelButton) {
	currentTarget = other
}
instance_deactivate_object(levelButton)
levelButtonVisable = false