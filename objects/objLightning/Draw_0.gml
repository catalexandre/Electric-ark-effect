draw_set_colour(color);
draw_set_alpha(alpha);
var currentX = x, currentY = y;
for(var i = 0; i < ds_list_size(splits); i += 2)
{
    var nextX = splits[| i], nextY = splits[| i + 1];
    draw_line_width(currentX, currentY, nextX, nextY, 1);
    currentX = nextX;
    currentY = nextY;
}

draw_line_width(currentX, currentY, targetX, targetY, 1)
draw_set_alpha(1);