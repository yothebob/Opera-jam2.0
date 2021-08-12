/// @description Insert description here
// You can write your code in this editor
if room == rm_game_over{
	game_over_screen("Game Over", "Score : " + string(score) + "\n Type  Name  &  Press  Enter  to  Continue");
	draw_text(x,y+50,"Name? :" + name + cursor);
}

if room == rm_pvp_over{
	draw_set_color(make_color_rgb(0,191,243))
	game_over_screen("Player " + string(global.winner) + " Wins!", "Press Enter to restart \n or \n hold escape to go to menu")
}