//Initialisation

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
