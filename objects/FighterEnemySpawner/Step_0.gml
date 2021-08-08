spawn += irandom(1);

if spawn == spawn_rate{
	spawn = 0;
	instance_create_depth(irandom_range(x-300,x+300),irandom_range(y-300,y+300),-1,FighterEnemy);
}
