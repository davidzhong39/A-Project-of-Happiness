function create_dialog(_messages){
    if(instance_exists(Obj_dialog)) return;
        
    else{
    var _inst = instance_create_depth(0, 0, 0, Obj_dialog);
    
    _inst.messages = _messages;
    _inst.current_message = 0;
    }
}   