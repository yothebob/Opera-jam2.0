player_speed = 7;
player_foreground_cell = [ceil(BattlefieldP2.grid_size/2),ceil(BattlefieldP2.grid_size/2)];

hits = 5;
tilt = 0;
cooldown = 0;
shoot_rate = 20;
hit_marker = false;

low_health_alarm = 0;
flash_rate = 45;
alarm_stop_flash = flash_rate;
play_alarm = false;


score = 0;
image_blend = c_red;

var ship_location = put_in_foreground_p2(player_foreground_cell[0],player_foreground_cell[1]);
x = ship_location[0];
y = ship_location[1];

