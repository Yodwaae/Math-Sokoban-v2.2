draw_set_font(fValeur)

//Affiche la valeur

draw_self();
draw_set_color(c_black)
draw_set_halign(fa_center)
draw_set_valign(fa_middle)
draw_text(x,y-6,string(valeur)) 

//Griser si bloqué

if oGame.unlocked[valeur] == 1 image_index = 0;
else image_index = 1;

//switch(valeur){
	
//case 1 :
//	if oGame.unlocked[1] = true image_index = 0;
//	else image_index = 1;
//	break;
	
//case 2 :
//	if oGame.unlocked[2] = true image_index = 0;
//	else image_index = 1;
//	break;
	
//case 3 :
//	if oGame.unlocked[3] = true image_index = 0;
//	else image_index = 1;
//	break;
	
//case 4 :
//	if oGame.unlocked[4] = true image_index = 0;
//	else image_index = 1;
//	break;
//}