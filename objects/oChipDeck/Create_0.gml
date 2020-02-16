selX = 0;
selY = 0;

chipGrid = ds_grid_create(4,3);
ds_grid_set_region(chipGrid, 0, 0, 3, 2, -1);
ds_grid_set_region(chipGrid, 1, 1, 2, 1, 0);
ds_grid_set_region(chipGrid, 1, 2, 2, 2, 4);

for(var i = 0; i < 4; i ++)
	selectedChips[i] = -1;

selectedChips[0] = -1;
selectedChips[1] = 5;
selectedChips[2] = 4;
selectedChips[3] = 7;

x = room_width/2 - sprite_width/2;
y = room_height/2  - sprite_height/2;
