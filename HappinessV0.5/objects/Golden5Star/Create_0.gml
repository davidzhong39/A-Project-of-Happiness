input_key = ord("E");
tilemap = layer_tilemap_get_id("Tile_Collisionz");


    if(tilemap_get_at_pixel(Obj_player.tilemap, x, y)){
        if(keyboard_check_pressed(input_key)){
        room_goto(Room1_1); 
        }   
    }
