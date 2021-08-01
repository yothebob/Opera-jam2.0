
function coordinates_to_foreground_cell(_x,_y){
	var object_cell = [(Battlefield.foreground_cell_size_x/_x) + (Battlefield.foreground_cell_size_x/2) - (Battlefield.padding/2) ,Battlefield.foreground_cell_size_y/_y + (Battlefield.foreground_cell_size_y) - (Battlefield.padding/2)];
	return object_cell;
}