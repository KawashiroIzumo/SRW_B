/// @description 阿姆罗跑路
with(talk_scene)
{
    scene_bak=BK46_sky_earth
    scene_mov=0
    
    i=0
    actor_enable[i]=true
    actor_active[i]=true
    actor_play[i]=true
    actor_sprite[i]=poeff00_city
    actor_loop_x[i]=1
    actor_speed[i]=0
    i=1
    actor_enable[i]=true
    actor_active[i]=true
    actor_play[i]=true
    actor_sprite[i]=poeff01_ground
    actor_loop_x[i]=1
    actor_speed[i]=0
    ///阿姆罗
    i=9
    actor_enable[i]=true
    actor_active[i]=true
    actor_play[i]=0
    actor_image_index[i]=19
    actor_sprite[i]=robo23s00_rdash
    actor_mirror[i]=0
    actor_speed[i]=-10
    
    i=8
    actor_enable[i]=true
    actor_active[i]=true
    actor_play[i]=1
    actor_sprite[i]=fx02_jitps
    actor_disappear[i]=0
    actor_speed[i]=-10
    
    i=12
    actor_enable[i]=true
    actor_active[i]=true
    actor_play[i]=1
    actor_x[i]=(actor_x[11]+actor_x[5])/2
    actor_sprite[i]=robo33s00_fighting
    actor_xs[i]=0.6
    actor_ys[i]=0.6
}

