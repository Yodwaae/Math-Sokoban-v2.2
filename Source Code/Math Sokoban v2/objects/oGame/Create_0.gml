//Initialisation

global.cameraX = 385;
global.cameraY = 2400;

for (var i = 1; i < 50;  i +=1){
	unlocked[i] = 0;
}

unlocked[1] = 1;

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
	unlocking = file_text_read_real(fileR);
	file_text_close(fileR);
	
	// Débloquage des niveaux 

	for (var i = 1; i < unlocking + 1; i +=1){
		unlocked[i] = 1;
	}
}


