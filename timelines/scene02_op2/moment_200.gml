/// @description 黑场
with(talk_scene)
{
    i=56
    actor_reset(i)
    actor_sprite[i]=zdb
    actor_alpha[i]=1
    actor_disappear[i]=0
    actor_image_index[i]=0
    actor_mirror[i]=false
    actor_x[i]=-1440
    actor_y[i]=0
    actor_speed[i]=4160/80
    actor_active[i]=1//显示为灰色
    actor_enable[i]=1//使用这个actor
    
    i=57
    actor_reset(i)
    actor_sprite[i]=zdb
    actor_alpha[i]=1
    actor_disappear[i]=0
    actor_image_index[i]=0
    actor_mirror[i]=1
    actor_x[i]=-1440
    actor_y[i]=0
    actor_speed[i]=4160/80
    actor_active[i]=1//显示为灰色
    actor_enable[i]=1//使用这个actor
}

