if(x < 0 || x > 1280 || y < 0 || y > 720 || tilemap_get_at_pixel(Obj_player.tilemap, x, y)){
    instance_destroy();
}


