with(talk_scene)
{
    scene_bak=BK44_shipbridge
    i=1
    actor_reset(i)
    actor_useing(i)
    actor_sprite[i]=thca00_reimu_stand
    actor_x[i]=480
    i=2
    actor_reset(i)
    actor_useing(i)
    actor_sprite[i]=plo00_wavebro_stand
    actor_x[i]=420
    actor_y[i]+=64
    i=3
    actor_reset(i)
    actor_useing(i)
    actor_sprite[i]=plo09_warwolf_stand
    actor_mirror[i]=1
    actor_x[i]=720
    actor_y[i]+=32
    
    i=56
    actor_alpha[i]=1
    actor_disappear[i]=0.05
}

