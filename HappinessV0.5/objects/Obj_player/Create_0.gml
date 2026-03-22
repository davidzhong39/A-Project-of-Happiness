pickups = [];

move_speed = 1;

tilemap = layer_tilemap_get_id("Tiles_Collision");

hp = 10;
hp_total = hp;
damage = 1;

facing = 0;

level = 1;
xp = 0;
xp_require = 100;

// Hotbar Variables
 _Hotbar_slot_size = 55;
 _Hotbar_y = 10;
 _Hotbar_x = 1300;
 _Hotbar = [_Hotbar_x - 270, _Hotbar_x - 205, _Hotbar_x - 140, _Hotbar_x - 75, _Hotbar_x - 10]
_Hotbar_Select = 0;

show_Pistol = false
show_Sword = false;
_Has_Gun = false;
_Has_Sword = false;

function add_xp(_xp_to_add){
    xp += _xp_to_add;
    if (xp >= xp_require){
       level++;
        xp -= xp_require;
        xp_require *= 1.4; 
        
        hp_total += 5;
        hp = hp_total;
        damage += 0.8;
        
        create_dialog([{
            name: "Congrats",
            msg: $"You leveled up! Your new stats are: \nLVL: {level}\nHP {hp_total} \nDMG {damage}"
        }])
    }
}

function add_pickup(_pickup_to_add){
    array_push(pickups, _pickup_to_add);
    show_debug_message(pickups);
    show_debug_message(_pickup_to_add);
    if(_pickup_to_add == "Pistol"){ 
        Hotbar_Pistol = array_length(pickups) - 1;
        Pistol_Place = _Hotbar[array_length(pickups) - 1]
        show_debug_message(Hotbar_Pistol);
        show_Pistol = true;
        _Has_Gun = true;
    }
    if(_pickup_to_add == "Sword"){
        Hotbar_Sword = array_length(pickups) - 1;
        Sword_Place = Obj_player._Hotbar[array_length(pickups) - 1]
        show_Sword = true;
        _Has_Sword = true;
    }
    
}


