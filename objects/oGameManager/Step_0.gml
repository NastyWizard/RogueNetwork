global.deltaTime = delta_time / 1000000;
global.elapsed += global.deltaTime

if(keyboard_check_pressed(ord("R")))
	room_restart();

if(keyboard_check_pressed(ord("Z"))) 
{
	global.paused = !global.paused;
}

if(global.paused) 
{
	global.deltaTime = 0.0;
}

oChipDeck.visible = global.paused;

if(keyboard_check(ord("F"))) 
{
	global.deltaTime = .05;
}

if(keyboard_check_pressed(ord("K")))
{
	for(var i = 0; i < instance_number(oEnemy); i++)
	{
		var inst = instance_find(oEnemy, i);
		inst.invuln = false;
		hurt(inst, 100000);
	}
}

if(numEnemies == 0) 
{
	wipeSpd += .3;
	wipePos+= wipeSpd;
	if(wipePos > room_width + 100)
		room_goto_next();
}
