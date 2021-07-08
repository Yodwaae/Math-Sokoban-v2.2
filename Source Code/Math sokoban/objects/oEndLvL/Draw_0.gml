//Affiche le numéro de la salle
draw_set_font(fValeur);
draw_self();
draw_set_color(c_black);
draw_set_halign(fa_center);
draw_text_transformed(x-20,y+200,string(oGoal.nextRoom-1),3,3,0);