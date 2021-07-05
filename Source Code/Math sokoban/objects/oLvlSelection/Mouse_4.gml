//Vérifie que le niveau soit débloqué

if oGame.unlocked[valeur] == 1{
	global.cameraX = oCamera.x
	global.cameraY = oCamera.y
	room_goto(cible)
}
else{
	show_message("Level Locked")
}

//switch(valeur){
	
//case 1 :
//	if oGame.unlocked[1] = true{
//	global.cameraX = oCamera.x;
//	global.cameraY = oCamera.y;
//	room_goto(cible);
//	}
//	else show_message("Level Locked");
//	break;
	
//case 2 :
//	if oGame.unlocked[2] = true{
//	global.cameraX = oCamera.x;
//	global.cameraY = oCamera.y;
//	room_goto(cible);
//	}
//	else show_message("Level Locked");
//	break;
	
//case 3 :
//	if oGame.unlocked[3]= true{
//	global.cameraX = oCamera.x;
//	global.cameraY = oCamera.y;
//	room_goto(cible);
//	}
//	else show_message("Level Locked");
//	break;
	
//case 4 :
//	if oGame.unlocked[4] = true{
//	global.cameraX = oCamera.x;
//	global.cameraY = oCamera.y;
//	room_goto(cible);
//	}
//	else show_message("Level Locked");
//	break;
//}