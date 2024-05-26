splits = ds_list_create();
var r = irandom_range(96, 255);
color = make_colour_rgb(r, r, 255);
fadeTime = room_speed / 8;
alpha = 1;
targetX = objPlayer.x;
targetY = objPlayer.y;
lightning_split(id);