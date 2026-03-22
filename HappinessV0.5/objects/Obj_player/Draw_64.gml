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

if(_Hotbar_Select == 0) draw_sprite_stretched_ext(spr_box2, 0, _Hotbar[0] - 2, _Hotbar_y - 2, _Hotbar_slot_size + 4, _Hotbar_slot_size + 4, c_green, 1);
if(_Hotbar_Select == 1) draw_sprite_stretched_ext(spr_box2, 0, _Hotbar[1] - 2, _Hotbar_y - 2, _Hotbar_slot_size + 4, _Hotbar_slot_size + 4, c_green, 1);
if(_Hotbar_Select == 2) draw_sprite_stretched_ext(spr_box2, 0, _Hotbar[2] - 2, _Hotbar_y - 2, _Hotbar_slot_size + 4, _Hotbar_slot_size + 4, c_green, 1);
if(_Hotbar_Select == 3) draw_sprite_stretched_ext(spr_box2, 0, _Hotbar[3] - 2, _Hotbar_y - 2, _Hotbar_slot_size + 4, _Hotbar_slot_size + 4, c_green, 1);
if(_Hotbar_Select == 4) draw_sprite_stretched_ext(spr_box2, 0, _Hotbar[4] - 2, _Hotbar_y - 2, _Hotbar_slot_size + 4, _Hotbar_slot_size + 4, c_green, 1);

draw_sprite_stretched(spr_box, 0, _Hotbar[0], _Hotbar_y, _Hotbar_slot_size, _Hotbar_slot_size);
draw_sprite_stretched(spr_box, 0, _Hotbar[1], _Hotbar_y, _Hotbar_slot_size, _Hotbar_slot_size);
draw_sprite_stretched(spr_box, 0, _Hotbar[2], _Hotbar_y, _Hotbar_slot_size, _Hotbar_slot_size);
draw_sprite_stretched(spr_box, 0, _Hotbar[3], _Hotbar_y, _Hotbar_slot_size, _Hotbar_slot_size);
draw_sprite_stretched(spr_box, 0, _Hotbar[4], _Hotbar_y, _Hotbar_slot_size, _Hotbar_slot_size);

if(show_Pistol){
draw_sprite_stretched(spr_pistol, 0, Pistol_Place + 5, _Hotbar_y + 5, _Hotbar_slot_size - 10, _Hotbar_slot_size - 10);
}

if(show_Sword){
draw_sprite_stretched(spr_Sword, 0, Sword_Place + 5, _Hotbar_y + 5, _Hotbar_slot_size - 10, _Hotbar_slot_size - 10);
}




