if (keyboard_check_pressed(ord("E"))){
    
    create_dialog([
    {
        name: "Test dialog!",
        msg: "It works!"
    }
    ])
}

var _hor = keyboard_check(ord("D")) - keyboard_check(ord("A"));
var _vert = keyboard_check(ord("S")) - keyboard_check(ord("W"));

move_and_collide(_hor * move_speed, _vert * move_speed, tilemap, 4, 3, 3);

<<<<<<< Updated upstream
if(_hor != 0 or _vert != 0){
    if(_vert > 0) sprite_index = spr_player_walk_down; 
    else if (_vert < 0) sprite_index = spr_player_walk_up;
    else if (_hor > 0) sprite_index = spr_player_walk_right;
    else if (_hor < 0) sprite_index = spr_player_walk_left; 
        
    facing = point_direction(0, 0, _hor, _vert);   
} 
else{
    if (sprite_index == spr_player_walk_right) sprite_index = spr_player_idle_right;
    else if (sprite_index == spr_player_walk_left) sprite_index = spr_player_idle_left; 
    else if (sprite_index == spr_player_walk_down) sprite_index = spr_player_idle_down; 
    else if (sprite_index == spr_player_walk_up) sprite_index = spr_player_idle_up;            
}

if(keyboard_check_pressed(vk_space)){
    var _inst = instance_create_depth(x, y, depth, obj_attack);
    _inst.image_angle = facing;
    _inst.damage *= damage;
=======
// Directional Sprite Handler
if (_hor != 0 or _vert != 0) {
    if (_vert > 0) {
        sprite_index = spr_player_walk_down;
        last_dir = "down";
    }
    else if (_vert < 0) {
        sprite_index = spr_player_walk_up;
        last_dir = "up";
    }
    else if (_hor > 0) {
        sprite_index = spr_player_walk_right;
        last_dir = "right";
    }
    else if (_hor < 0) {
        sprite_index = spr_player_walk_left;
        last_dir = "left";
    }
}
else {
    if (last_dir == "right") sprite_index = spr_player_idle_right;
    else if (last_dir == "left") sprite_index = spr_player_idle_left;
    else if (last_dir == "down") sprite_index = spr_player_idle_down;
    else if (last_dir == "up") sprite_index = spr_player_idle_up;
>>>>>>> Stashed changes
}