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

//Noirci le fond de niveau

if !instance_exists(oBlackEndLevel) instance_create_depth(0.5*room_width, 0.5*room_height,-999,oBlackEndLevel);

//Crée l'animation de fin de niveau

if !instance_exists(oEndLvL) instance_create_depth(0.5*room_width,0.2*room_height,-1000,oEndLvL);

//Crée le bouton Home

if !instance_exists(oButtonHome) instance_create_depth(0.65*room_width,0.7*room_height,-1000,oButtonHome);

//Crée le bouton Replay

if !instance_exists(oButtonReplay) instance_create_depth(0.35*room_width,0.7*room_height,-1000,oButtonReplay);

