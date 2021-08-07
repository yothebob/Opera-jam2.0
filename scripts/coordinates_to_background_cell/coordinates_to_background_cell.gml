function coordinates_to_background_cell(_x,_y){
	var object_cell = [((_x - ((Battlefield.padding/2) ))/Battlefield.background_cell_size_x)/2,((_y - ((Battlefield.padding/2) ))/Battlefield.background_cell_size_y)/2];
	return object_cell;
}