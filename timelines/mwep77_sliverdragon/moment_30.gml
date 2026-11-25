a=create_fx_puz(fx_con,global.mrobo_x[mrid]+dcos(map_dre),global.mrobo_y[mrid]-dsin(map_dre))
a.sprite_index=robo20s00_sliverdragon
a.image_angle=map_dre

audio_play_sound(SE14_dragon,1,0)
noi=0
for(i=0;i<256;i++)
{
    if(mrid==i)continue
    if(global.mrobo_id[i]<0)continue
    else if(global.mrobo_team[i]==global.mrobo_team[mrid]&&global.wep_map_automata[wid])continue
    ls_long=wep_get_long(wid,mrid)
    if(map_dre==0)
    {
        var vw=abs(global.mrobo_x[i]-global.mrobo_x[mrid])-1
        if
        (
            abs(global.mrobo_y[i]-global.mrobo_y[mrid])<=vw
            &&global.mrobo_x[i]>global.mrobo_x[mrid]
            &&global.mrobo_x[i]<=global.mrobo_x[mrid]+ls_long
        )
        target_mrid[tmax++]=i
    }
    else if(map_dre==90)
    {
        var vh=abs(global.mrobo_y[i]-global.mrobo_y[mrid])-1
        if
        (
            abs(global.mrobo_x[i]-global.mrobo_x[mrid])<=vh
            &&global.mrobo_y[i]<global.mrobo_y[mrid]
            &&global.mrobo_y[i]>=global.mrobo_y[mrid]-ls_long
        )
        target_mrid[tmax++]=i
    }
    else if(map_dre==180)
    {
        var vw=abs(global.mrobo_x[i]-global.mrobo_x[mrid])-1
        if
        (
            abs(global.mrobo_y[i]-global.mrobo_y[mrid])<=vw
            &&global.mrobo_x[i]<global.mrobo_x[mrid]
            &&global.mrobo_x[i]>=global.mrobo_x[mrid]-ls_long
        )
        target_mrid[tmax++]=i
    }
    else
    {
        var vh=abs(global.mrobo_y[i]-global.mrobo_y[mrid])-1
        if
        (
            abs(global.mrobo_x[i]-global.mrobo_x[mrid])<=vh
            &&global.mrobo_y[i]>global.mrobo_y[mrid]
            &&global.mrobo_y[i]<=global.mrobo_y[mrid]+ls_long
        )
        target_mrid[tmax++]=i
    }
    
}

