///UIopen(UIid,xpos,ypos,additional args)
if(!ds_list_empty(global.UImanager.OpenUIlist))
    for(var i = 0; i < ds_list_size(global.UImanager.OpenUIlist);i++){
        var _map = global.UImanager.OpenUIlist[| i]
        if(_map[? "ui"] == argument0) return false
    }
var map = ds_map_create();
map[? "ui"] = argument0;
map[? "xpos"] = argument1;
map[? "ypos"] = argument2;
map[? "args"] = argument3;
ds_list_add(global.UImanager.OpenUIlist,map)
return ds_list_find_index(global.UImanager.OpenUIlist,map)
