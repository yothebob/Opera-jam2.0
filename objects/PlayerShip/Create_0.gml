player_speed = 7;
player_foreground_cell = [ceil(Battlefield.grid_size/2),ceil(Battlefield.grid_size/2)];


hits = 5;
tilt = 0;
cooldown = 0;
hit_marker = false;
shoot_rate = 20;

low_health_alarm = 0;
flash_rate = 45;
alarm_stop_flash = flash_rate;
play_alarm = false;


score = 0;

var ship_location = put_in_foreground(player_foreground_cell[0],player_foreground_cell[1]);
x = ship_location[0];
y = ship_location[1];

