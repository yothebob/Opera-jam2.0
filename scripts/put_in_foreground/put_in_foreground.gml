
function put_in_foreground(_cellx,_celly){
	var object_coordinates = [Battlefield.foreground_cell_size_x*_cellx - (Battlefield.foreground_cell_size_x/2) + (Battlefield.padding/2),Battlefield.foreground_cell_size_y*_celly - (Battlefield.foreground_cell_size_y/2) + (Battlefield.padding/2)];
	return object_coordinates;
}