function create_dialog(_messages){
    if(instance_exists(Obj_dialog)) {
        return;
    } else {
    var _inst = instance_create_depth(0, 0, 0, Obj_dialog);
    _inst.messages = _messages;
    _inst.current_message = 0;
    }
}   


//char_colors = {
    //"Congrats" : c_yellow,
    //"Cross" : c_yellow,
    //"Your Bitch Ass" : c_aqua
//}


welcome_dialog = [
{
    name: "Cross",
    msg: "Welcome to hell."
},

{
    name: "Your Bitch Ass",
    msg: "It's a cave. KYS Fuhlahtoogut"
},

{
    name: "Cross",
    msg: "YAY."
},

{
    name: "Your Bitch Ass",
    msg: "Rot."
},
]

doctor_dialog = [
    {   
        name: "Dr. House",
        msg: "Welcome, I hear you are in need of antidepressants."
    },
    {   
        name: "Yourself",
        msg: "Yes, please, anything to make it all stop."
    },
    {   
        name: "Dr. House",
        msg: "I understand. Im going to perscribe you Sertraline 50mg - Take one per day."
    },
    {   
        name: "Yourself",
        msg: "Thank you so much doctor."
    },
    {   
        name: "Dr. House",
        msg: "You're most welcome."
    },
]