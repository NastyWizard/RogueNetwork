
image_blend = c_white;
if(invuln)
{
	invulnTimer+= global.deltaTime;
	if((invulnTimer * 100) % 50) 
	{
			image_blend = c_aqua;
	}
		
}

if(invulnTimer > .25)
{
	invuln = false;
	invulnTimer = 0;
}