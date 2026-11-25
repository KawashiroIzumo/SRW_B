var i=target_mrid[noi],miss=false;
if(noi>=tmax)timeline_position=730
else if(global.mrobo_id[i]>=0)
{
    var dice=irandom(100);
    if(dice>=workout_mzl(wid,mrid,i))miss=true
    a=instance_create(2,2,ability_change_con)
    a.mode=0
    a.mrid=i
    a.xs_fx=true
    if(miss)
    {
        audio_play_sound(sound4_Jump2,1,0)
        a.xs_fx_ind=spfx16_boost
        a.dmg=0
        b=find_buff(i,5)
        if(b>=0)global.mrobo_buff[i,b]=-1
    }
    else
    {
        audio_play_sound(sound144_gunpower00,1,0)
        a.dmg=-1*workout_danmage(wid,mrid,i)
        a.xs_fx_ind=fx03_baozha
        b=find_buff(i,14)
        if(b>=0)global.mrobo_buff[i,b]=-1
    }
}


