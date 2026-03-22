messages = [];
current_message = -1;
current_char = 0;
draw_message = "";

if (!variable_instance_exists(id, "messages")) {
    messages = [];
}

if (!variable_instance_exists(id, "current_message")) {
    current_message = 0;
}

char_speed = 0.5;
input_key = vk_space;

gui_w = display_get_gui_width();
gui_h = display_get_gui_height();
