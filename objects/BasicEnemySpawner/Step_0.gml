spawn += irandom(1);

if spawn == 120{
	spawn = 0;
	with(instance_create_depth(x,y,-1,BasicEnemy)){
		instance_cell = [irandom(Battlefield.grid_size),irandom(Battlefield.grid_size)];
	}
}
