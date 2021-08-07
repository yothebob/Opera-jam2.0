
function coordinates_to_foreground_cell(_x,_y){
	var object_cell = [(_x - ((Battlefield.padding/2) ))/Battlefield.foreground_cell_size_x,(_y - ((Battlefield.padding/2)))/Battlefield.foreground_cell_size_y];
	return object_cell;
}