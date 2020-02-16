var xpos = argument0;
var ypos = argument1;
var val= argument2;

if(xpos > 5)	 xpos = 5;
if(xpos < 0)	 xpos = 0;
if(ypos > 2)	 ypos = 2;
if(ypos < 0)	 ypos = 0;

ds_grid_set(global.gameGrid, xpos, ypos, val);