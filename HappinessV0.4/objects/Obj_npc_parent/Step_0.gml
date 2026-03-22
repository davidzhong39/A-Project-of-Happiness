if(instance_exists(Obj_dialog)) exit;
    
if(instance_exists(Obj_player) && distance_to_object(Obj_player) < 8){
    can_talk = true;
    if(keyboard_check_pressed(input_key)){
        create_dialog(dialog);
    }
} else {
    can_talk = false;
}