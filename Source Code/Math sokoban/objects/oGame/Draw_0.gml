/// Dessine les étoiles débloqués

if room == rLevelSelection {

ecart = 128;

	for (var i = 1; i < array_length(starUnlocked); i++){
	
		switch (i) {
	
		case 1 : 
		startX = 480;
		startY = 2432;
		break;
		
		case 2 : 
		startX = 288;
		startY = 2304;
		break;
		
		case 3 : 
		startX = 302;
		startY = 0;
		break;
		
		case 4 : 
		startX = 302;
		startY = 0;
		break;
		
		case 5 : 
		startX = 302;
		startY = 0;
		break;
		
		case 6 : 
		startX = 302;
		startY = 0;
		break;
		
		case 7 : 
		startX = 302;
		startY = 0;
		break;
	
		}
	
		maximum = array_length(starUnlocked[i]);
		
		for (var j = 1; j < maximum ; j++){
	
			if starUnlocked[i][j] == 1 draw_sprite(sStar,0,startX,startY -(j*ecart));
	
			}
	
		}

}