if(instance_exists(Obj_dialog)) exit;
    
var _hor = keyboard_check(ord("D")) - keyboard_check(ord("A"));
var _vert = keyboard_check(ord("S")) - keyboard_check(ord("W"));

move_and_collide(_hor * move_speed, _vert * move_speed, tilemap, undefined, undefined, undefined, move_speed, move_speed);

if(keyboard_check_pressed(ord("1"))) _Hotbar_Select = 0;
if(keyboard_check_pressed(ord("2"))) _Hotbar_Select = 1;
if(keyboard_check_pressed(ord("3"))) _Hotbar_Select = 2;
if(keyboard_check_pressed(ord("4"))) _Hotbar_Select = 3;
if(keyboard_check_pressed(ord("5"))) _Hotbar_Select = 4;


if(_hor != 0 or _vert != 0){
    if(_vert > 0) sprite_index = spr_player_walk_down; 
    else if (_vert < 0) sprite_index = spr_player_walk_up;
    else if (_hor > 0) sprite_index = spr_player_walk_right;
    else if (_hor < 0) sprite_index = spr_player_walk_left; 
        
    facing = point_direction(0, 0, _hor, _vert);   

} else {
    if (sprite_index == spr_player_walk_right) sprite_index = spr_player_idle_right;
    else if (sprite_index == spr_player_walk_left) sprite_index = spr_player_idle_left; 
    else if (sprite_index == spr_player_walk_down) sprite_index = spr_player_idle_down; 
    else if (sprite_index == spr_player_walk_up) sprite_index = spr_player_idle_up;            
}

if(_Has_Sword && (_Hotbar_Select == Hotbar_Sword)){
    if(keyboard_check_pressed(vk_space)){
    var _inst = instance_create_depth(x, y, depth, obj_attack);
    _inst.image_angle = facing;
    _inst.damage *= damage;
}
}


if (keyboard_check_pressed(vk_escape)) {
    game_end();
}

if(_Has_Gun && (_Hotbar_Select == Hotbar_Pistol)){
if(keyboard_check_pressed(vk_space)){
    var _bullet = instance_create_depth(x, y, depth, Obj_bullet)
    _bullet.direction = facing;
    _bullet.image_angle = facing;
    _bullet.damage *= damage;
}
}