///Creates a new global persistent variable AddFlag(ID,key,val)
var idnum = argument0
var flagval = argument1
var startval = argument2
if(!is_string(flagval)){
    flagval = string(flagval)
}

var map = global.flags[? string(idnum)];
ds_map_add(map,flagval,startval);
