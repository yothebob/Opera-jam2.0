/// @description 
spawn_spawner += irandom(1);
time ++;

if time <= 500{difficulty = 1;}
else if time <= 1000{difficulty = 2;}
else if time <= 1500{difficulty=3;}
else if time <= 2000{difficulty = 4;}
else if time <= 3000{difficulty = 5;}

if spawn_spawner == spawn_rate{
	switch(difficulty){
		case 0:
			instance_create_depth(irandom_range(x-300,x+300),irandom_range(y-300,y+300),10,BasicEnemy);
			break;
		case 1:
			var pick = choose(BasicEnemy,FighterEnemy);
			instance_create_depth(irandom_range(x-300,x+300),irandom_range(y-300,y+300),10,pick);
			break;
		case 2:
			for (var i=0;i < 3;i++){
				var pick = choose(BasicEnemy,FighterEnemy);
				instance_create_depth(irandom_range(x-300,x+300),irandom_range(y-300,y+300),10,pick);
			}
			break;
		case 3:
			for (var i=0;i < 5;i++){
				var pick = choose(BasicEnemy,FighterEnemy);
				instance_create_depth(irandom_range(x-300,x+300),irandom_range(y-300,y+300),10,pick);
			}
			break;
		case 4:
			for (var i=0;i < 3;i++){
				var pick = choose(DestroyerEnemy,FighterEnemy);
				instance_create_depth(irandom_range(x-300,x+300),irandom_range(y-300,y+300),10,pick);
			}
		case 5:
			for (var i=0;i < 5;i++){
				var pick = choose(DestroyerEnemy,FighterEnemy);
				instance_create_depth(irandom_range(x-300,x+300),irandom_range(y-300,y+300),10,pick);
			}
			
	}
	spawn_rate -= 1;
	spawn_spawner = 0;
}