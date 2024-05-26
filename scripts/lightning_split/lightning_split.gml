function lightning_split(id)
{
	if(argument0 == noone)
	    return false;

	var minRotation = -40, maxRotation = 40;
	var splitSize = 5;
	with(argument0)
	{
	    var dist = point_distance(x, y, targetX, targetY);
	    var dir = point_direction(x, y, targetX, targetY);
	    var currentX = x, currentY = y;
	    for(var i = 0; i < dist div splitSize; i ++)
	    {
	        var newDir = dir + irandom_range(minRotation, maxRotation);
	        currentX += lengthdir_x(splitSize, newDir);
	        currentY += lengthdir_y(splitSize, newDir);
	        ds_list_add(splits, currentX);
	        ds_list_add(splits, currentY);
	    }
	}
}