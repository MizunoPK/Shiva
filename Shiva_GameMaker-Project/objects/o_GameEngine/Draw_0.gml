depth = -1000
draw_set_font(f_dialog)
draw_set_color(c_black)
draw_set_halign(fa_left)
draw_set_valign(fa_top)
draw_text(120,10,
	"Round: " + string(global.roundNumber) +
	"\nResearch Points: " + string(global.researchPoints) +
	"\nFood: " + string(global.food)	
)