if(alarm[1] >= 0){
    target_x = x + kb_x;
    target_y = y + kb_y;
}


var _hor = clamp(target_x - x, -1, 1);
var _vert = clamp(target_y - y, -1, 1);

move_and_collide(_hor * move_speed, _vert * move_speed, [tilemap, Obj_enemy_parent]);