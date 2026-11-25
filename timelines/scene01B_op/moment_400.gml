/// @description 黑场
with(talk_scene)
{
    i=56
    actor_sprite[i]=pcC_black
    actor_alpha[i]=1
    actor_disappear[i]=0.05
    actor_image_index[i]=0
    actor_mirror[i]=false
    actor_x[i]=0
    actor_y[i]=0
    actor_active[i]=1//显示为灰色
    actor_enable[i]=1//使用这个actor
    
    i=0
    actor_reset(i)
    actor_enable[i]=true
    actor_active[i]=true
    actor_play[i]=1
    actor_sprite[i]=fx02_jitps
    actor_combo[i]=noone
    actor_x[i]=600
    actor_mirror[i]=false
    i=1
    actor_reset(i)
    actor_enable[i]=true
    actor_active[i]=true
    actor_play[i]=false
    actor_image_index[i]=9
    actor_sprite[i]=robo01s00_rdash
    actor_combo[i]=noone
    actor_x[i]=600
    actor_mirror[i]=false
}

