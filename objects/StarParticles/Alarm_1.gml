part_emitter_region(part_star,pt_emit, player_location[0],player_location[0],player_location[1],player_location[1],ps_shape_ellipse,ps_distr_invgaussian);

part_emitter_burst(part_star,pt_emit,choose(space_dust_blues,space_dust_reds),3);
alarm[1] = irandom_range(60,180);