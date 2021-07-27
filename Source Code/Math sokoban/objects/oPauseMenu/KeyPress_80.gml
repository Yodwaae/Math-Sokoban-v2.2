//Menu de pause


if !(room == rLevelSelection) and oGoal.alreadyUsed == false{

	 //Détruit le menu de pause

		if instance_exists(oBlackEndLevel){

		oPlayer.canMove = true;

		instance_destroy(oBlackEndLevel);
		instance_destroy(oButtonHome);
		instance_destroy(oButtonReplay);
		instance_destroy(oMovementLimit);

		}
		// crée le menu de pause
		else{
			
		oPlayer.canMove = false;
		
		instance_create_depth(0.5*room_width, 0.5*room_height,-999,oBlackEndLevel)
		instance_create_depth(0.65*room_width,0.7*room_height,-1000,oButtonHome);
		instance_create_depth(0.35*room_width,0.7*room_height,-1000,oButtonReplay);
	    instance_create_depth(0.5*room_width,0.7*room_height,-1000,oMovementLimit);
		
		}
}