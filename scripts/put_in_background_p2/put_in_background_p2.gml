
function put_in_background_p2(_cellx,_celly){
	var object_coordinates = [BattlefieldP2.background_cell_size_x*_cellx + BattlefieldP2.background_indent_x + (BattlefieldP2.padding/2) + BattlefieldP2.background_cell_size_x + BattlefieldP2.grid_offset,BattlefieldP2.background_cell_size_y*_celly + BattlefieldP2.background_indent_y + (BattlefieldP2.padding/2) + BattlefieldP2.background_cell_size_y];
	return object_coordinates;
}