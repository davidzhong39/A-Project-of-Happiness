var _dx = 16;
var _dy = 16;
var _barw = 256;
var _barh = 32;

// Properties
draw_set_font(Font1);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

// Healthbar
var _health_barw = _barw * (hp / hp_total);

draw_sprite_stretched(spr_box, 0, _dx, _dy, _barw, _barh);
draw_sprite_stretched_ext(spr_box, 1, _dx, _dy, _health_barw, _barh, c_red, .6);

draw_text(_dx + _barw / 2, _dy + _barh / 2, "HP")

// XP
var _xp_barw = _barw * (xp / xp_require);
_dy += _barh + 8;

draw_sprite_stretched(spr_box, 0, _dx, _dy, _barw, _barh);
draw_sprite_stretched_ext(spr_box, 1, _dx, _dy, _xp_barw, _barh, c_blue, .6);

draw_text(_dx + _barw/2, _dy + _barh/2, $"LEVEL {level}");

// Reset properties
draw_set_halign(fa_left);
draw_set_valign(fa_top);

// Hotbar
var _Hotbar_slot_size = 55
var _Hotbar_y = 650
draw_sprite_stretched(spr_box, 0, 10, _Hotbar_y, _Hotbar_slot_size, _Hotbar_slot_size);
draw_sprite_stretched(spr_box, 0, 75, _Hotbar_y, _Hotbar_slot_size, _Hotbar_slot_size);
draw_sprite_stretched(spr_box, 0, 140, _Hotbar_y, _Hotbar_slot_size, _Hotbar_slot_size);
draw_sprite_stretched(spr_box, 0, 205, _Hotbar_y, _Hotbar_slot_size, _Hotbar_slot_size);
draw_sprite_stretched(spr_box, 0, 270, _Hotbar_y, _Hotbar_slot_size, _Hotbar_slot_size);

if(show_Pistol){ 
draw_sprite_stretched(spr_pistol, 0, 10, _Hotbar_y + 5, _Hotbar_slot_size, _Hotbar_slot_size);
}


