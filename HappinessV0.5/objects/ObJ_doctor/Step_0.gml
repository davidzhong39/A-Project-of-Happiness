if(instance_exists(Obj_dialog)) {
    exit;
}

if(instance_exists(Obj_player) && distance_to_object(Obj_player) < 8){
    can_talk = true;
    
    if(keyboard_check_pressed(input_key) && !dialogFinished){
        create_dialog(dialog);
        dialogStarted = true;
    }
} else {
    can_talk = false;
}

if(dialogStarted && !instance_exists(Obj_dialog)){
    if(!_Has_Pills){
        add_pickup("Pills");
        _Has_Pills = true;
    }
    
    room_goto(Room1_1);
    
    dialogStarted = false;
}