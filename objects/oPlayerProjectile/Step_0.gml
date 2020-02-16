/*
*/

x += dir * 160 * global.deltaTime;
xx = floor(x / 32) -1;

if(xx mod 2 == 0)
	image_yscale = -1;
else 	
	image_yscale = 1;

var obj = get_position(xx, yy);
if(object_is_ancestor(obj.object_index, oEnemy))
{
	hurt(obj, damage);	
	instance_destroy();
}

if( xx > 5 || xx < 0 || yy > 2 || yy < 0) 
{
	instance_destroy();
}
