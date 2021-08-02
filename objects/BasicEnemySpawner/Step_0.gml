spawn += irandom(1);

if spawn == 120{
	spawn = 0;
	instance_create_depth(x,y,-1,BasicEnemy);
}
