/// @description 机体移动

with(talk_scene)
{   
    a=actor_x[1]
    i=0
    actor_enable[i]=true
    actor_active[i]=true
    actor_alpha[i]=0
    actor_play[i]=1
    actor_sprite[i]=fx02_jitps
    actor_combo[i]=noone
    actor_x[i]=a
    actor_mirror[i]=0
    actor_speed[i]=10
    i=1
    actor_enable[i]=true
    actor_active[i]=true
    actor_play[i]=1
    actor_image_index[i]=0
    actor_sprite[i]=robo16s00_transform
    actor_combo[i]=robo01s00_fly
    actor_mirror[i]=0
    actor_speed[i]=10   
}

