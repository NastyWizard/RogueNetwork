/*stepTimer += global.deltaTime;

if (step_check(stepTimer, 1)) 
{
	x += 32;
	stepTimer = 0;
}
*/

x += dir * 160 * global.deltaTime;
xx = floor(x / 32) -1;

if(xx mod 2 == 0)
	image_yscale = -1;
else 	
	image_yscale = 1;

var obj = get_position(xx, yy);

if(instance_exists(obj) && obj.object_index == oPlayer)
{
	hurt(obj, damage);	
	instance_destroy();
}

if( xx > 5 || xx < 0 || yy > 2 || yy < 0) 
{
	instance_destroy();
}
