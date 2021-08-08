
function put_in_foreground_p2(_cellx,_celly){
	var object_coordinates = [BattlefieldP2.foreground_cell_size_x*_cellx + (BattlefieldP2.padding/2) + BattlefieldP2.grid_offset,BattlefieldP2.foreground_cell_size_y*_celly + (BattlefieldP2.padding/2)];
	return object_coordinates;
}