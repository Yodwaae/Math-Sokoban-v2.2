//Empeche le joueur de bouger une fois le niveau finis

oPlayer.canMove = false;

// Débloque le niveau suivant

oGame.unlocked[oGame.special][nextRoom] = true;

//débloque l'étoile

if oGame.starUnlocked[oGame.special][nextRoom] == 0 {
	
	if (oPlayer.movementCounter <= oGoal.limit){
		
		oGame.starUnlocked[oGame.special][nextRoom-1] = true;
		
		//Changing star old savefile
		
		//reading the file
		
		if (file_exists(STARSAVEFILE)){
			var SfileR;
			var starString;
			
			SfileR = file_text_open_read(STARSAVEFILE);
			
			for (var i=1; i <= oGame.special; i++){
				
				starString[i] = file_text_read_string(SfileR);
				file_text_readln(SfileR);
				
			}
			
			file_text_close(SfileR);
			
			//Overwriting old start save file
			
			var SfileW;
			
			SfileW = file_text_open_write(STARSAVEFILE);
			
			starString[oGame.special]  = string_replace_at(starString[oGame.special],nextRoom-1,1);
			
			for (var i  = 1; i <= oGame.special; i++){
				
				file_text_write_string(SfileW,starString[i]);
				file_text_writeln(SfileW);
				
			}
			
			file_text_close(SfileW);
			
		}

	}
	
}
// Overwrite old save

if (file_exists(SAVEFILE)){
	var verif;
	var verifA;
	var fileR;
	
	fileR = file_text_open_read(SAVEFILE);
	verif = file_text_read_real(fileR);
	
	verifA = file_text_read_real(fileR); //Ajouter ces deux lignes pour chaque nouveaux groupe de niveaux (ainsi que les trois autres marquées d'un point rouge)
	file_text_readln(fileR)
	
	file_text_close(fileR);
	
		// Create new save 
		var fileW;
		fileW = file_text_open_write(SAVEFILE);
		if verif < nextRoom and oGame.special == 1 file_text_write_real(fileW,nextRoom); //Verifie que le niveau suivant soit bloqué (débloque si c'est le cas)
		else file_text_write_real(fileW,verif);
		
		
		file_text_writeln(fileW)
		if verifA < nextRoom and oGame.special == 2 file_text_write_real(fileW,nextRoom); //Vérifie que le premier charactère soit un A et que le niveau suivant soit bloqué (débloque si c'est le cas)
		else file_text_write_real(fileW,verifA);
		
		file_text_close(fileW)
}


//Noirci le fond de niveau

if !instance_exists(oBlackEndLevel) instance_create_depth(0.5*room_width, 0.5*room_height,-999,oBlackEndLevel);


//Crée l'animation de fin de niveau

if !instance_exists(oEndLvL) instance_create_depth(0.5*room_width,0.2*room_height,-1000,oEndLvL);

//Crée le bouton Home

if !instance_exists(oButtonHome) instance_create_depth(0.65*room_width,0.7*room_height,-1000,oButtonHome);

//Crée le bouton Replay

if !instance_exists(oButtonReplay) instance_create_depth(0.35*room_width,0.7*room_height,-1000,oButtonReplay);

//Crée l'affichage de l'obj bonus

if !instance_exists(oMovementLimit) instance_create_depth(0.5*room_width,0.7*room_height,-1000,oMovementLimit);
