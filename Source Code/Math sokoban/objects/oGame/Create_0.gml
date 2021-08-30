//Initialisation

depth = -1000;

randomize()// Pour faire varier les msg de fins de niveaux
special = 1;
global.cameraX = 385;
global.cameraY = 2400;

//Création du fichier de sauvegarde

#macro SAVEFILE "SaveM.sav"

if (!file_exists(SAVEFILE)){
	
	var fileW;
	fileW = file_text_open_write(SAVEFILE);
	
	levelInialisation[1] = "1" + 74*"0";
	levelInialisation[2] = 5*"0";
	levelInialisation[3] = 5*"0";
	levelInialisation[4] = 5*"0";
	levelInialisation[5] = 5*"0";
	levelInialisation[6] = 5*"0";
	levelInialisation[7] = 5*"0";
	
	for (var i = 1; i <= 7; i++){
		
		file_text_write_string(fileW,levelInialisation[i]);
		file_text_writeln(fileW);
		
	}
	
	file_text_close(fileW);
	
}

//Lecture du fichier de sauvegarde

var fileR;
fileR = file_text_open_read(SAVEFILE);

for (var i = 1; i <= 7; i++){
	
	unlockingLevel[i] = file_text_read_string(fileR);
	file_text_readln(fileR);
	
	for (var j = 1; j <= string_length(unlockingLevel[i]); j++){
		
		if string_char_at(unlockingLevel[i],j) == 1 unlocked[i][j] = 1;
		else unlocked[i][j] = 0;
		
	}
	
	file_text_close(fileR);
	
}

//création de la sauvegarde des étoiles

#macro STARSAVEFILE "StarSaveM.sav"

//Initialisation du fichier de sauvegarde des étoiles

if (!file_exists(STARSAVEFILE)){
	
	var SfileW;
	SfileW = file_text_open_write(STARSAVEFILE);
	
	starInialisation[1] = 75*"0";
	starInialisation[2] = 5*"0";
	starInialisation[3] = 5*"0";
	starInialisation[4] = 5*"0";
	starInialisation[5] = 5*"0";
	starInialisation[6] = 5*"0";
	starInialisation[7] = 5*"0";
	
	for (var i = 1; i <= 7; i++){
		
		file_text_write_string(SfileW,starInialisation[i]);
		file_text_writeln(SfileW);
	
	}

file_text_close(SfileW);

}

//débloquage des étoiles

var SfileR;
SfileR = file_text_open_read(STARSAVEFILE);

for (var i = 1; i <= 7 ; i++){ //8 car il y a 7 catégorie de niveaux, a changer si nouvelle catégorie de niveau
	
	unlockingStar[i] = file_text_read_string(SfileR);
	file_text_readln(SfileR);
	
	for (var j = 1; j <= string_length(unlockingStar[i]); j++){
		
		if string_char_at(unlockingStar[i],j) == 1 starUnlocked[i][j] = 1;
		else starUnlocked[i][j] = 0;
		
	}

}

file_text_close(SfileR);
