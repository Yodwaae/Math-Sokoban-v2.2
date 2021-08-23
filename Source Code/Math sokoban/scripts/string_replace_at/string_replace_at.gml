
function string_replace_at(){
	
/// @description string_replace_at(str, pos, insert)
/// @param str
/// @param pos
/// @param insert

return (string_copy(argument0, 1, argument1-1) + string(argument2) + string_delete(argument0, 1, argument1));

}