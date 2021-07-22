// Dessine le message de fin

draw_self();
draw_set_font(fEndLvl);
draw_set_halign(fa_center);

draw_set_color(c_black);
draw_text(x+2,0.15*sprite_height,endString); //Black Outline
draw_text(x-2,0.15*sprite_height,endString); //Black Outline
draw_text(x,0.15*sprite_height+2,endString); //Black Outline
draw_text(x,0.15*sprite_height-2,endString); //Black Outline

draw_set_color(c_white);
draw_text(x,0.15*sprite_height,endString);
	
