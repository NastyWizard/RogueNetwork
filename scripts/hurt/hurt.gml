var target = argument0;
var ammount = argument1;

if(!target.invuln) 
{
	target.hp -= ammount;
	target.invuln = true;
}
