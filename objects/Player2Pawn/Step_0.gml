//grabbing new player2 cell position
pawn_cell = PlayerShipP2.player_foreground_cell;

//putting pawn in proper x, y coordinates for cell
var pawn_coordinates = put_in_background(pawn_cell[0],pawn_cell[1]);
x = pawn_coordinates[0];
y = pawn_coordinates[1];