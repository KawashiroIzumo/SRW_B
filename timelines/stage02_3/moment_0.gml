/// @description 
init_stagescene()
a=instance_create(0,0,talk_scene)
with(DND_player)cold=true
with(camera)follow=false
with(talk_scene)
{   
    scene_bak=BK46_sky_earth
    i=10
    actor_reset(i)
    actor_active[i]=1
    actor_enable[i]=1
    actor_play[i]=0
    actor_x[i]=640
    actor_y[i]=360
    actor_image_index[i]=0
    actor_sprite[i]=anCG01_SEMPAI_AT
    i=56
    actor_reset(i)
    actor_x[i]=640
    actor_y[i]=360
    actor_sprite[i]=zdb2
    actor_enable[i]=1
    actor_alpha[i]=1
    
}


