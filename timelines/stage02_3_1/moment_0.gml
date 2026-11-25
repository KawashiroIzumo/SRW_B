/// @description 
init_stagescene()
with(DND_player)cold=true
with(camera)follow=false
audio_play_sound(sound39_gundam_dash,1,1)
with(talk_scene)
{   
    i=10
    actor_enable[i]=true
    actor_active[i]=true
    actor_play[i]=1
    actor_image_index[i]=0
    actor_sprite[i]=anCG02_lady6_chargeing
    actor_x[i]=640
    actor_y[i]=360
    i=56
    actor_sprite[i]=zdb
    actor_alpha[i]=1
    actor_mirror[i]=false
    actor_speed[i]=-4160/80
    actor_active[i]=1//显示为灰色
    actor_enable[i]=1//使用这个actor
    
    i=57
    actor_sprite[i]=zdb
    actor_alpha[i]=1
    actor_mirror[i]=1
    actor_speed[i]=-4160/80
    actor_active[i]=1//显示为灰色
    actor_enable[i]=1//使用这个actor
}


