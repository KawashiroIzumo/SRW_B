/// @description 黑场
with(talk_scene)
{
    scene_bak=BK46_sky_earth
    scene_mov=1
    
    i=56
    actor_alpha[i]=1
    actor_disappear[i]=0.05
    
    i=0
    actor_reset(i)
    actor_enable[i]=true
    actor_active[i]=true
    actor_play[i]=true
    actor_sprite[i]=poeff00_city
    actor_x[i]=0
    actor_y[i]=720
    actor_loop_x[i]=1
    actor_speed[i]=3
    i=1
    actor_reset(i)
    actor_enable[i]=true
    actor_active[i]=true
    actor_play[i]=true
    actor_sprite[i]=poeff01_ground
    actor_x[i]=0
    actor_y[i]=720
    actor_loop_x[i]=1
    actor_speed[i]=5
    
    i=2
    actor_reset(i)
    actor_enable[i]=true
    actor_active[i]=true
    actor_play[i]=1
    actor_sprite[i]=fx02_jitps
    actor_x[i]=800
    actor_y[i]=400
    actor_xs[i]=0.6
    actor_ys[i]=0.6
    i=3
    actor_reset(i)
    actor_enable[i]=true
    actor_active[i]=true
    actor_play[i]=0
    actor_image_index[i]=19
    actor_sprite[i]=robo24s00_rdash
    actor_x[i]=800
    actor_y[i]=400
    actor_xs[i]=0.6
    actor_ys[i]=0.6
}

