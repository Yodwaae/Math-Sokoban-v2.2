// Détruit les objets obsolètes	

	instance_destroy(box1)
	instance_destroy(box2)
	instance_destroy(self)
	
// Crée le nouveau bloc num
	if newValue >9999 newValue = 10001;
	inst = instance_create_layer(x,y,"Instances",oNumBox)
	with (inst){
		newB = true;
		valeur = other.newValue;
		if valeur >= 10000 sprite_index = sBoxError;
	}