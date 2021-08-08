
function coordinates_to_foreground_cell_p2(_x,_y){
	var object_cell = [(_x - BattlefieldP2.grid_offset - ((BattlefieldP2.padding/2) ))/BattlefieldP2.foreground_cell_size_x,(_y - ((BattlefieldP2.padding/2)))/BattlefieldP2.foreground_cell_size_y];
	return object_cell;
}