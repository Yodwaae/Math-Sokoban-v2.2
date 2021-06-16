// Avancer (w)

if keyboard_check_pressed(ord("W")){
	numVer = 0;
	sprite_index = sPlayerW;
	if position_meeting(x,y - sprite_height,oNumBox) numVer = instance_position(x,y - sprite_height,oNumBox).valeur;
	if position_meeting(x, y - sprite_height, oWall) or numVer>999 or numVer<-999 or (position_meeting(x,y - sprite_height, oBoxParent) and !position_empty(x, y - 2*sprite_height)){	

		y = y	
	}
	else y = y - sprite_height;
}

// Reculer (s)

if keyboard_check_pressed(ord("S")){
	numVer = 0;
	sprite_index = sPlayerS;
	if position_meeting(x,y + sprite_height,oNumBox) numVer = instance_position(x,y + sprite_height,oNumBox).valeur;
	if position_meeting(x, y + sprite_height, oWall) or numVer>999 or numVer<-999 or (position_meeting(x,y + sprite_height, oBoxParent) and !position_empty(x, y + 2*sprite_height)){	
		y = y	
	}
	else y = y + sprite_height;
}

//Droite (d)

if keyboard_check_pressed(ord("D")){
	numVer = 0;
	sprite_index = sPlayerD;
	if position_meeting(x + sprite_width,y,oNumBox) numVer = instance_position(x + sprite_width,y,oNumBox).valeur;
	if position_meeting(x + sprite_width, y, oWall) or numVer>999 or numVer<-999 or (position_meeting(x + sprite_width,y, oBoxParent) and !position_empty(x + 2*sprite_width, y)){
		x = x
	}
	else x = x + sprite_width;	
}

// Gauche (a)

if keyboard_check_pressed(ord("A")){
	numVer = 0;
	sprite_index = sPlayerA;
	if position_meeting(x- sprite_width,y,oNumBox) numVer = instance_position(x - sprite_width,y,oNumBox).valeur;
	if position_meeting(x - sprite_width, y, oWall) or numVer>999 or numVer<-999 or (position_meeting(x - sprite_width,y, oBoxParent) and !position_empty(x - 2*sprite_width, y)){	
		x = x	
	}
	else x = x - sprite_width;	
}
