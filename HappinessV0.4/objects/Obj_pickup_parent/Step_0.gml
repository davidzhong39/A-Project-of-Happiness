if(instance_exists(Obj_player) && distance_to_object(Obj_player) < 8){
    can_pickup = true;
    if(keyboard_check_pressed(input_key)){
        instance_destroy();
        Obj_player.add_pickup(pickup);
    }
} else {
    can_talk = false;
}