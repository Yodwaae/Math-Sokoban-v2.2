// Dessine l'étoile d'objectif

if (oPlayer.movementCounter <= oGoal.limit) and (oGoal.alreadyUsed = true) { // objectif atteint en fin de level

	image_index = 1;
	
}
else{ // progression ou échec de l'objectif
	
	image_index = 0;
	
}

	draw_self();
	draw_set_font(fValeur);
	draw_set_halign(fa_center);
	draw_set_color(c_black);

	draw_text(0.5*room_width,0.63*room_height+2,"Current Moves Counter : " + string(oPlayer.movementCounter));
	draw_text(0.5*room_width,0.78*room_height+2,"Star Limit : " + string(oGoal.limit));

	
	draw_set_color(c_white);
	draw_text(0.5*room_width,0.63*room_height,"Current Moves Counter : " + string(oPlayer.movementCounter));
	draw_text(0.5*room_width,0.78*room_height,"Star Limit : " + string(oGoal.limit));
	
