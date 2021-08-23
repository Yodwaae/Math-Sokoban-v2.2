//Initialisation

depth = -1000;

randomize()// Pour faire varier les msg de fins de niveaux
special = 1;
global.cameraX = 385;
global.cameraY = 2400;

for (var i = 1; i < 50;  i +=1){ //Verouille les niveaux basiques
	unlocked[1][i] = 0;
}

for (var i = 1; i < 6;  i +=1){ //Verouille les niveaux A
	unlocked[2][i] = 0;
}

unlocked[1][1] = 1;


//création de la sauvegarde des étoiles

#macro STARSAVEFILE "StarSaveM.sav"

//Initialisation du fichier de sauvegarde des étoiles

if (!file_exists(STARSAVEFILE)){
	
	var SfileW;
	SfileW = file_text_open_write(STARSAVEFILE);
	
	starInialisation[1] = 75*"0"
	starInialisation[2] = 5*"0"
	starInialisation[3] = 5*"0"
	starInialisation[4] = 5*"0"
	starInialisation[5] = 5*"0"
	starInialisation[6] = 5*"0"
	starInialisation[7] = 5*"0"
	
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

//Création de la sauvegarde
#macro SAVEFILE "SaveM.sav"

//Initialisation du fichier de sauvegarde
if (!file_exists(SAVEFILE)){
	var fileW;
	fileW = file_text_open_write(SAVEFILE);
	file_text_write_real(fileW,1);
	file_text_close(fileW);
}
else{ //Lecture du fichier de sauvegarde
	var fileR;
	fileR = file_text_open_read(SAVEFILE);
	unlocking = file_text_read_real(fileR); //vérifie quels niveaux basiques sont débloqués
	
	file_text_readln(fileR);
	unlockingA = file_text_read_real(fileR); //Vérifie quels niveaux A sont débloqués
	
	file_text_close(fileR);
	
	
	
	// Débloquage des niveaux 

	for (var i = 1; i <= unlocking; i +=1){ //Débloque les niveaux basiques
		unlocked[1][i] = 1;
	}
	
	
	for (var i = 1; i <= unlockingA; i +=1){ //Débloque les niveaux A
		unlocked[2][i] = 1;
	}
}
