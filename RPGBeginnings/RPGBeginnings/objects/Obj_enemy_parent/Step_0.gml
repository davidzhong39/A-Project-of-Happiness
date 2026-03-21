var _hor = clamp(target_x - x, -1, 1);
var _vert = clamp(target_y - y, -1, 1);

move_and_collide(_hor * move_speed, _vert * move_speed, tilemap);