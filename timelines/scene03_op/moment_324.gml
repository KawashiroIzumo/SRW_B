audio_play_sound(SE11_tractor,1,0)
with(talk_scene)
{
    eff_shock=60
    
    i=56
    actor_reset(i)
    actor_useing(i)
    actor_sprite[i]=zdb_white
    actor_alpha[i]=0
    actor_x[i]=640
    actor_y[i]=360
    actor_disappear[i]=-0.02
}

