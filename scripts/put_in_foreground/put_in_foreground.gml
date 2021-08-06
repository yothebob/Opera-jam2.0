
function put_in_foreground(_cellx,_celly){
	var object_coordinates = [Battlefield.foreground_cell_size_x*_cellx + (Battlefield.padding/2),Battlefield.foreground_cell_size_y*_celly + (Battlefield.padding/2)];
	return object_coordinates;
}