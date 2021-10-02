///@function
///@description
///@param
function console_log(text){
	show_debug_message(text);
}

function get_collision(){
var _obj= instance_position(x, y+ySpeed * playerID, Obj_Crate);
if(_obj!=-4)return _obj ;
_obj=instance_position(x, y+ySpeed * playerID, Obj_Ground);
if(_obj!=-4) return _obj;

return noone;
}