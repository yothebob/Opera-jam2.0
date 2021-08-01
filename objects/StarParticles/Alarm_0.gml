
part_emitter_region(part_star,pt_emit, player_location[0],player_location[0],player_location[1],player_location[1],ps_shape_ellipse,ps_distr_invgaussian);

part_emitter_burst(part_star,pt_emit,star_3d,3);
part_emitter_burst(part_star,pt_emit,star_3d_little,3);
alarm[0] = 1;