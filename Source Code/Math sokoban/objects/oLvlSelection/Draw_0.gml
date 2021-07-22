draw_set_font(fValeur)

//Affiche la valeur

draw_self();
draw_set_color(c_black)
draw_set_halign(fa_center)
draw_set_valign(fa_middle)
if special == 1 draw_text(x,y-6,string(valeur));
else draw_text(x,y-6,LevelGroup + string(valeur));

//Grisé si bloqué

if oGame.unlocked[special][valeur] == 1 image_index = 0;
else image_index = 1;