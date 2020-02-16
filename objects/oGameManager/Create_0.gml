
if(!instance_exists(oChipDeck))
	instance_create_depth(0,0,-10000,oChipDeck)

global.stepTime = 0.1;

global.deltaTime = 0;
global.elapsed = 0;
global.paused = false;

global.gameGrid = ds_grid_create(6,3);
ds_grid_set_region(global.gameGrid, 0, 0, 5, 2, -1);

numEnemies = instance_number(oEnemy);

wipePos = room_width;
wipeSpd = 0;
wipeCnt = 0;