//Empeche le joueur de bouger une fois le niveau finis

oPlayer.canMove = false;

// Débloque le niveau suivant

oGame.unlocked[nextRoom] = true;

// Overwrite old save

if (file_exists(SAVEFILE)){
	var verif;
	var fileR;
	fileR = file_text_open_read(SAVEFILE);
	verif = file_text_read_real(fileR);
	file_text_close(fileR)
	
	if verif < nextRoom{

		// Create new save
		var fileW;
		fileW = file_text_open_write(SAVEFILE);
		file_text_write_real(fileW,nextRoom)
		file_text_close(fileW)
	}
}

//Crée le bouton Home

instance_create_depth(0.65*room_width,0.7*room_height,-1000,oButtonHome)