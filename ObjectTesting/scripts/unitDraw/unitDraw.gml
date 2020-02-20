// @func: unitDraw
// @description: This is called during the draw event of units and draws the sprite and health
// @Author: Kai Mizuno
// Date Created: 2/19/19
// Last Updated: 2/19/19


draw_self()
draw_set_halign(fa_center)
draw_set_font(f_health)
draw_text_colour(x, y - sprite_height, currentHealth, healthColor, healthColor, healthColor, healthColor, 1)