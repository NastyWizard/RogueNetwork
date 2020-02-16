var timer = argument0;
var numSteps = argument1;

return timer - (global.stepTime * numSteps*10) > 0;