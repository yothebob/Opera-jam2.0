/// @description 
spawn_spawner += irandom(1);

if spawn_spawner == spawn_rate{
	var choose_spawner = choose(BasicEnemySpawner,FighterEnemySpawner);
	with(instance_create_depth(irandom_range(x-300,x+300),irandom_range(y-300,y+300),0,choose_spawner)){
		spawn_rate = spawn_rate - EndlessSpawner.difficulty;
	}
	difficulty += 5;
}