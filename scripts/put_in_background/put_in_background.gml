
function put_in_background(_cellx,_celly){
	var object_coordinates = [Battlefield.background_cell_size_x*_cellx + Battlefield.background_indent_x + (Battlefield.padding/2),Battlefield.background_cell_size_y*_celly + Battlefield.background_indent_y + (Battlefield.padding/2)];
	return object_coordinates;
}