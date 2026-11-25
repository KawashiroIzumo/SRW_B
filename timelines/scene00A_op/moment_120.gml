/// @description 对话内容
global.bgm=BGMsrw06_Baltic_Levity_byfreePD
audio_play_sound(sound36_highsound_laucher,1,0)
qname="波澜哥"
qtext="[\\shock:1]逆藏开怀宝，荣华了我................"
qhead=po00_bolan
with(talk_scene)
{
    i=0
    actor_enable[i]=true
    actor_active[i]=true
    actor_play[i]=true
    actor_sprite[i]=plo00_wavebro_talk
    
    i=1
    actor_sprite[i]=plo01_xq_stand
    actor_combo[i]=noone
    
    i=5
    actor_reset(i)
    actor_x[i]=actor_x[0]
    actor_y[i]=actor_y[0]
    actor_enable[i]=true
    actor_active[i]=true
    actor_play[i]=true
    actor_sprite[i]=fx01_soundlight
    actor_xs[i]=0
    actor_ys[i]=0
    actor_grow[i]=0.1
    actor_disappear[i]=0.04
}

create_dhk(qname,qtext,qhead)

