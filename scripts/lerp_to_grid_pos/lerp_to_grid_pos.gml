var lerpVal = argument0;

var prevX = x;
var prevY = y;
move_to_grid_pos();

x = lerp(prevX, x, lerpVal);
y = lerp(prevY, y, lerpVal);
