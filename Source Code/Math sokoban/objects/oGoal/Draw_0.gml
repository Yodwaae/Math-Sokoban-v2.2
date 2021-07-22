//Change la couleur si valeur atteinte

if valeur1reached{
	col1 = c_lime
	ocol1 = c_green;
}
else{
	col1 = c_white
	ocol1 = c_black;
}


if valeur2reached{
	col2 = c_lime
	ocol2 = c_green;
}
else{
	col2 = c_white
	ocol2 = c_black;
}


if valeur3reached{
	col3 = c_lime
	ocol3 = c_green;
}
else{
	col3 = c_white
	ocol3 = c_black;
}


if valeur4reached{
	col4 = c_lime
	ocol4 = c_green;
}
else{
	col4 = c_white
	ocol4 = c_black;
}

//Assigning variables

if valeur2 == false{
	pos1 = 0.5*room_width;
}

if valeur2 == true and valeur3 == false{
	pos1 = 0.45*room_width;
	posC1 = 0.5*room_width;
	pos2 = 0.55*room_width;
}

if valeur3 == true and valeur4 == false{
	pos1 = 0.4*room_width;
	posC1 = 0.45*room_width;
	pos2 = 0.5*room_width;
	posC2 = 0.55*room_width;
	pos3 = 0.6*room_width;
}

if valeur4 == true{
	pos1 = 0.35*room_width;
	posC1 = 0.4*room_width;
	pos2 = 0.45*room_width;
	posC2 = 0.5*room_width;
	pos3 = 0.55*room_width;
	posC3 = 0.6*room_width
	pos4 = 0.65*room_width
}

//Affiche la valeur cible de la salle

draw_set_halign(fa_center)
draw_set_font(fGoal)

draw_set_color(ocol1)
draw_text_transformed(pos1+2,0.1*room_height,string(valeur1draw),1,1,0) //Black Outline
draw_text_transformed(pos1,0.1*room_height-2,string(valeur1draw),1,1,0) //Black Outline
draw_text_transformed(pos1,0.1*room_height+2,string(valeur1draw),1,1,0) //Black Outline
draw_text_transformed(pos1-2,0.1*room_height,string(valeur1draw),1,1,0) //Black Outline

draw_set_color(col1)
draw_text_transformed(pos1,0.1*room_height,string(valeur1draw),1,1,0)

if valeur2 == true{
	
	draw_set_color(ocol2)
	draw_text_transformed(pos2+2,0.1*room_height,string(valeur2draw),1,1,0) //Black Outline
	draw_text_transformed(pos2,0.1*room_height-2,string(valeur2draw),1,1,0) //Black Outline
	draw_text_transformed(pos2,0.1*room_height+2,string(valeur2draw),1,1,0) //Black Outline
	draw_text_transformed(pos2-2,0.1*room_height,string(valeur2draw),1,1,0) //Black Outline
	
	draw_text_transformed(posC1+2,0.1*room_height,";",1,1,0) //Black Outline
	draw_text_transformed(posC1-2,0.1*room_height,";",1,1,0) //Black Outline
	draw_text_transformed(posC1,0.1*room_height+2,";",1,1,0) //Black Outline
	draw_text_transformed(posC1,0.1*room_height-2,";",1,1,0) //Black Outline
	
	draw_set_color(col2)
	draw_text_transformed(posC1,0.1*room_height,";",1,1,0)
	draw_text_transformed(pos2,0.1*room_height,string(valeur2draw),1,1,0)
}

if valeur3 == true{
	
	draw_set_color(ocol3)
	draw_text_transformed(pos3+2,0.1*room_height,string(valeur3draw),1,1,0) //Black Outline
	draw_text_transformed(pos3,0.1*room_height-2,string(valeur3draw),1,1,0) //Black Outline
	draw_text_transformed(pos3,0.1*room_height+2,string(valeur3draw),1,1,0) //Black Outline
	draw_text_transformed(pos3-2,0.1*room_height,string(valeur3draw),1,1,0) //Black Outline

	draw_text_transformed(posC2+2,0.1*room_height,";",1,1,0) //Black Outline
	draw_text_transformed(posC2-2,0.1*room_height,";",1,1,0) //Black Outline
	draw_text_transformed(posC2,0.1*room_height+2,";",1,1,0) //Black Outline
	draw_text_transformed(posC2,0.1*room_height-2,";",1,1,0) //Black Outline

	draw_set_color(col3)
	draw_text_transformed(posC2,0.1*room_height,";",1,1,0)
	draw_text_transformed(pos3,0.1*room_height,string(valeur3draw),1,1,0)
}

if valeur4 == true{
	
	draw_set_color(ocol4)
	draw_text_transformed(pos4+2,0.1*room_height,string(valeur4draw),1,1,0) //Black Outline
	draw_text_transformed(pos4,0.1*room_height-2,string(valeur4draw),1,1,0) //Black Outline
	draw_text_transformed(pos4,0.1*room_height+2,string(valeur4draw),1,1,0) //Black Outline
	draw_text_transformed(pos4-2,0.1*room_height,string(valeur4draw),1,1,0) //Black Outline
	
	draw_text_transformed(posC3+2,0.1*room_height,";",1,1,0) //Black Outline
	draw_text_transformed(posC3-2,0.1*room_height,";",1,1,0) //Black Outline
	draw_text_transformed(posC3,0.1*room_height+2,";",1,1,0) //Black Outline
	draw_text_transformed(posC3,0.1*room_height-2,";",1,1,0) //Black Outline
	
	draw_set_color(col4)
	draw_text_transformed(posC3,0.1*room_height,";",1,1,0)
	draw_text_transformed(pos4,0.1*room_height,string(valeur4draw),1,1,0)
}
	