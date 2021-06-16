/// Vérifie si le calcul doit etre lancé

// Vérifie sur l'axe horizontal

if position_meeting(x-sprite_width,y,oNumBox) and position_meeting(x+sprite_width,y,oNumBox){
	
	box1 = instance_position(x-sprite_width,y,oNumBox);
	num1 = box1.valeur;
	
	box2 = instance_position(x+sprite_width,y,oNumBox);
	num2 = box2.valeur;
	
	if num1 < 10000	and num2 < 10000 calcul = true;
}

// Vérifie sur l'axe vertical

if position_meeting(x,y-sprite_height,oNumBox) and position_meeting(x,y+sprite_height,oNumBox){
	
	box1 = instance_position(x,y-sprite_height,oNumBox);
	num1 = box1.valeur;
	
	box2 = instance_position(x,y+sprite_height,oNumBox);
	num2 = box2.valeur;
	
	if num1 < 10000	and num2 < 10000 calcul = true;
}

/// Procéde au calcul

if calcul = true{
	
	if type == "+"{ // Addition	
		newValue = num1 + num2;	
	}
	
		if type == "-"{ // Soustraction	
		newValue = num1 - num2;	
	}
		if type == "X"{ // Multiplication
		newValue = num1 * num2;	
	}
	
		if type == "/"{ // Division
			if num2 !=0 newValue = num1 / num2;
			else newValue = 10001;
	}
	
		if type == "mod"{ // Modulo
			if num2 !=0 newValue = num1 % num2;
			else newValue = 10001;
	}
	
		if type == "euc"{ //Division euclidienne
			if num2 !=0 newValue = num1 div num2;
			else newValue = 10001;
	}
	
	if alarm[0] == -1 alarm[0] = 60;
	image_speed = 1;
}
//// Détruit les objets obsolètes	

//	instance_destroy(box1)
//	instance_destroy(box2)
//	instance_destroy(self)
	
//// Crée le nouveau bloc num
//	if newValue >9999 newValue = 10001;
//	inst = instance_create_layer(x,y,"Instances",oNumBox)
//	with (inst){
//		newB = true;
//		valeur = other.newValue;
//		if valeur >= 10000 sprite_index = sBoxError;
//	}}