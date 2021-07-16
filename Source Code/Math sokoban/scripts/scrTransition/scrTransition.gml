global.midTransition = false;
global.roomTarget = -1;

//Place the Sequence in the Room
function TransitionPlaySequence(_type)
{
	if (layer_exists("transition")) layer_destroy("transition");
	var _lay = layer_create(-9999,"transition");
	layer_sequence_create(_lay,400,1200,_type);
}

//Called whenever you want to go from one room to another, using any combination of In/Out Sequences
function TransitionStart(_roomTarget, _typeOut, _typeIn)
{
	if (!global.midTransition)
	{
		global.midTransition = true;
		global.roomTarget = _roomTarget;
		TransitionPlaySequence(_typeOut);
		layer_set_target_room(_roomTarget);
		TransitionPlaySequence(_typeIn);
		layer_reset_target_room();
		return true;
	}
	else return false;
}

//Called as a moment at the end of an "Out"	transition sequence
function TransitionChangeRoom()
{
	room_goto(global.roomTarget);
}

//Called as a moment at the end of an "In" transition Sequence
function TransitionFinished()
{
	layer_sequence_destroy(self.elementID);
	global.midTransition = false;
}