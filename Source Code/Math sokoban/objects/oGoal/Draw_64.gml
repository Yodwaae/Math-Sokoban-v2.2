//Affiche la valeur cible de la salle

if valeur2 == false{
	draw_set_font(fValeur);
	draw_set_color(c_white);
	if valeur1reached == true draw_set_color(c_green);
	draw_text_transformed(x + 400, y + 50, string(valeur1draw), 1.5, 1.5,0);

}

if valeur2 == true and valeur3 == false{
	draw_set_font(fValeur);
	draw_set_color(c_white);
	if valeur1reached == true draw_set_color(c_green);
	draw_text_transformed(x + 400, y + 50, string(valeur1draw) + " ; " + string(valeur2draw), 1.5, 1.5,0);
	
}

if valeur3 == true and valeur4 == false{
	draw_set_font(fValeur);
	draw_set_color(c_white);
	if valeur1reached == true draw_set_color(c_green);
	draw_text_transformed(x + 400, y + 50, string(valeur1draw) + " ; " + string(valeur2draw) + " ; " +  string(valeur3draw), 1.5, 1.5,0);
	
}

if valeur4 == true{
	draw_set_font(fValeur);
	draw_set_color(c_white);
	if valeur1reached == true draw_set_color(c_green);
	draw_text_transformed(x + 400, y + 50, string(valeur1draw) + " ; " + string(valeur2draw) + " ; " +  string(valeur3draw) + " ; " + string(valeur4draw), 1.5, 1.5,0);
}