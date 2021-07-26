//Sélectionne le message de fin

if oGoal.alreadyUsed == true endString = choose("Congratulations !","GG !!","Well Played !","Awesome !");
else{ 
	
	switch(oGame.special){
	
	case 1 :
	type = " ";
	break;
	
	case 2:
	type = " A";
	break;
	}
	
	endString = "Level" + string(type) + string(oGoal.nextRoom - 1);
	
}