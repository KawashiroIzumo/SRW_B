noi=0
for(i=0;i<256;i++)
{
    if(mrid==i)continue
    if(global.mrobo_id[i]<0)continue
    else if(global.mrobo_team[i]==global.mrobo_team[mrid]&&global.wep_map_automata[wid])continue
    if(workout_dot_distance(global.mrobo_x[i],global.mrobo_y[i],global.mrobo_x[mrid],global.mrobo_y[mrid])<=wep_get_long(wid,mrid))
    {
        target_mrid[tmax++]=i
    }
}
//show_message("tmax="+string(tmax))
