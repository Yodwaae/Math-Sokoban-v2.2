//Vérifie que le niveau soit débloqué

if oGame.unlocked[special][valeur] == 1{
	global.cameraX = oCamera.x
	global.cameraY = oCamera.y
	oGame.special = special;
	
	TransitionStart(cible,SqFadeOut,SqFadeIn);
	
}
else{
	show_message("Level Locked")
}
