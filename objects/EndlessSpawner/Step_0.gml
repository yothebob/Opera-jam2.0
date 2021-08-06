/// @description 
spawn_spawner += irandom(1);

if spawn_spawner == spawn_rate{
	with(instance_create_depth(irandom_range(x-300,x+300),irandom_range(y-300,y+300),0,BasicEnemySpawner)){
		spawn_rate = spawn_rate - EndlessSpawner.difficulty;
	}
	difficulty += 5;
}