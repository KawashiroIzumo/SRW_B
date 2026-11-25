/// @description 黑场消逝 人物创建
with(talk_scene)
{
    scene_bak=BK45_shipbridge_earth
    
    i=56
    actor_alpha[i]=1
    actor_disappear[i]=0.05
    
    i=0
    actor_reset(i)
    actor_enable[i]=true
    actor_active[i]=true
    actor_play[i]=true
    actor_sprite[i]=plo09_warwolf_stand
    actor_mirror[i]=1
    actor_x[i]=1280+200
    actor_y[i]=500
    i=1
    actor_reset(i)
    actor_enable[i]=true
    actor_active[i]=true
    actor_play[i]=true
    actor_sprite[i]=thca06_youmu_stand
    actor_x[i]=-200
    actor_y[i]=500
    i=2
    actor_reset(i)
    actor_enable[i]=true
    actor_active[i]=true
    actor_play[i]=true
    actor_sprite[i]=po13_ladylu
    actor_alpha[i]=0
    actor_x[i]=600
    actor_y[i]=100
}

