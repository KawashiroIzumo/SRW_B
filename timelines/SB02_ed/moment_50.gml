/// @description 黑场
with(talk_scene)
{
    scene_bak=BK55_hongkongpolice
    
    i=56
    actor_disappear[i]=0.05
    i=0
    actor_reset(i)
    actor_useing(i)
    actor_sprite[i]=plo31_liuxing_talk
    actor_x[i]=192
    actor_y[i]=432
    i=1
    actor_reset(i)
    actor_useing(i)
    actor_sprite[i]=plo32_police_talk
	actor_mirror[i]=1
    actor_x[i]=448
    actor_y[i]=384
    i=2
    actor_reset(i)
    actor_useing(i)
    actor_sprite[i]=plo32_police_talk
	actor_mirror[i]=1
    actor_x[i]=512
    actor_y[i]=528    
}

