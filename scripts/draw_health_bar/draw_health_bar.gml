var xpos = argument0; 
var ypos = argument1; 
var val = argument2;
var maxVal = argument3;
var isPlayer = argument4;

draw_sprite_ext(sHealthBarBackFill,0,xpos,ypos - maxVal*2,1,maxVal*2,0,c_white,1);

for(var i = 0; i < val; i++) 
{
	draw_sprite(sHealthBarFillPlayer, 0, xpos, ypos - maxVal*2 - i*2 + maxVal*2 - 1);
}

draw_sprite(sHealthBarTop,0,xpos,ypos - maxVal*2 );
draw_sprite(sHealthBarBottom,0,xpos,ypos);
if(isPlayer)
	draw_sprite(sPlayerEmblem,0,xpos,ypos+2);
else
	draw_sprite(sEnemyEmblem,0,xpos,ypos+2);
