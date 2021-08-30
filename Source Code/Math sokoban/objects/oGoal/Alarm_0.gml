//Empeche le joueur de bouger une fois le niveau finis

oPlayer.canMove = false;

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
// débloque le niveau suivant

if oGame.unlocked[oGame.special][nextRoom] == 0 {
	
	oGame.unlocked[oGame.special][nextRoom] = 1;
	
	//changing the save file
	
	if (file_exists(SAVEFILE)){
		
		//reading the save file
		
		var fileR;
		fileR = file_text_open_read(SAVEFILE);
		var LvlString;
		
		for (var i = 1; i <= 7; i++){
			
			LvlString[i] = file_text_read_string(fileR);
			file_text_readln(fileR);
			
		}
		
		file_text_close(fileR);
		
		//actually overwriting the savefile
		
		var fileW;
		fileW = file_text_open_write(SAVEFILE);
		
		LvlString[oGame.special] = string_replace_at(LvlString[oGame.special],nextRoom,1);
		
		for (var i = 1; i <= 7; i++){
			
			file_text_write_string(fileW,LvlString[i]);
			file_text_writeln(fileW);
			
		}
		
		file_text_close(fileW);
		
	}
	
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
