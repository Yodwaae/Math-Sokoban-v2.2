/// Vérifie si le calcul doit etre lancé

// Vérifie sur l'axe horizontal

if position_meeting(x-sprite_width,y,oNumBox){
	
	box1 = instance_position(x-sprite_width,y,oNumBox);
	num1 = box1.valeur;
	
	if num1 < 10000	calcul = true;
}

if position_meeting(x+sprite_width,y,oNumBox){
	
	box1 = instance_position(x+sprite_width,y,oNumBox);
	num1 = box1.valeur;
	
	if num1 < 10000	calcul = true;
}


// Vérifie sur l'axe vertical

if position_meeting(x,y-sprite_height,oNumBox){
	
	box1 = instance_position(x,y-sprite_height,oNumBox);
	num1 = box1.valeur;
		
	if num1 < 10000	calcul = true;
}

if position_meeting(x,y+sprite_height,oNumBox){
	
	box1 = instance_position(x,y+sprite_height,oNumBox);
	num1 = box1.valeur;
	
	if num1 < 10000	calcul = true;
}

// Procéde au calcul

//Empeche le joueur de bouger pdt le calcul



if calcul = true{
	
	oPlayer.canMove = false;
	deviation = false;
	
	if type == "^2"{ // Carré	
		newValue = sqr(num1);	
	}
	
		if type == "^3"{ // Cube
		newValue = sqr(num1) * num1;	
	}
		if type == "inv"{ // Inverse
			if num1 = 0 newValue =0;
			else newValue = -num1;	
	}
	
		if type == "opp"{ // Opposé
			if num1 != 0 newValue = 1/num1;	
			else newValue = 0;
	}
	
		if type == "sqrt" or type == "^1/2"{ // Racine carré
		if num1 >= 0 newValue = sqrt(num1);
		else newValue = 10001;
		}
		
	if alarm[0] == -1 alarm[0] = 60;
	image_speed = 1;
}

	
	
//// Détruit les objets obsolètes	

//	instance_destroy(box1)
//	instance_destroy(self)

	
//// Crée le nouveau bloc num

//	inst = instance_create_layer(x,y,"Instances",oNumBox)
//	with(inst){
//		newB = true;
//		valeur = other.newValue;
//		if valeur >= 10000 sprite_index = sBoxError;
//	}
//}
