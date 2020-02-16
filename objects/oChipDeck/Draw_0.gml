draw_self();

for(var dx = 0; dx < ds_grid_width(chipGrid); dx++) 
{
	for(var dy = 0; dy < ds_grid_height(chipGrid); dy++) 
	{
		var asset = asset_get_index("sChip" + string(chipGrid[# dx, dy]));
		if(asset != -1)
			draw_sprite(asset, 0, chip_gridx_to_world(dx), chip_gridy_to_world(dy));
	}
	
	if(selectedChips[dx] != -1)
	{
		var asset = asset_get_index("sChip" + string(selectedChips[dx]));
		draw_sprite(asset, 0, chip_gridx_to_world(dx), chip_gridy_to_world(3) + 2);
	}
}

draw_sprite(sChipSelector, 0, chip_gridx_to_world(selX), chip_gridy_to_world(selY));
