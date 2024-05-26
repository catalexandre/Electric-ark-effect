hInput = keyboard_check(ord("D")) - keyboard_check(ord("A"));
vInput = keyboard_check(ord("S")) - keyboard_check(ord("W"));

if(hInput != 0 || vInput != 0)
{
	movementDirection = point_direction(0, 0, hInput, vInput);
	x += lengthdir_x(2, movementDirection);
	y += lengthdir_y(2, movementDirection);
}

collisionCheck = collision_circle_list(x, y, 50, objLightningAnchor, false, false, shocked, false);

generatorFrame++;

if(collisionCheck != noone)
{
	for(var i = 0; i < collisionCheck; i++)
	{
		instance_create_depth(shocked[| i].x, shocked[| i].y, 0, objLightning)
	}
}
	
ds_list_clear(shocked);