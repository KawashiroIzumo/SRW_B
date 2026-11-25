var ls_long;
rid=global.mrobo_id[mrid]
for(iy=0;iy<100;iy++)
{
    for(ix=0;ix<100;ix++)
    {
        bfs_map_can_atk[ix,iy]=false
        bfs_map_trap[ix,iy]=0//0=无障碍，1=不可以逾越的障碍，2=队友障碍
    }
}
if(global.wep_map[wid]==false||global.wep_map_type[wid]==0)
{
    //首先计算障碍
    for(i=0;i<256;i++)
    {   
        if(global.mrobo_id[i]>=0&&global.mrobo_onship[i]==false)
        {
            ix=global.mrobo_x[i]
            iy=global.mrobo_y[i]
            if(global.mrobo_team[i]!=global.mrobo_team[mrid])
            {
                bfs_map_trap[ix,iy]=1
            }
            else bfs_map_trap[ix,iy]=2
        }
    }
    //开始bfs运算并清理掉队友与自身的格子
    ls_long=wep_get_long(wid,mrid)
    for(iy=0;iy<global.map_h[mapid];iy++)
    {
        for(ix=0;ix<global.map_w[mapid];ix++)
        {
            dis=abs(ix-global.mrobo_x[mrid])+abs(iy-global.mrobo_y[mrid])
            if(dis<global.wep_short[wid]||dis>ls_long)continue;
            else
            {
                bfs_map_can_atk[ix,iy]=true
                if(bfs_map_trap[ix,iy]==2)
                {
                    if(!mapmode)
                        bfs_map_can_atk[ix,iy]=false
                    else if(global.wep_map_automata[wid]==false)bfs_map_can_atk[ix,iy]=false//地图炮敌我识别
                }
            }
        }
    }
}
else if(global.wep_map_type[wid]==1)
{
    //show_message(string(map_dre))
    ix=global.mrobo_x[mrid]    
    iy=global.mrobo_y[mrid] 
    ls_long=wep_get_long(wid,mrid)+1
    if(map_dre==0)
    {
        for(ix=min(global.map_w[mapid],global.mrobo_x[mrid]+1);ix<min(global.map_w[mapid],global.mrobo_x[mrid]+ls_long);ix++)
        {
            for(iy=max(0,global.mrobo_y[mrid]-1);iy<=min(global.map_h[mapid]-1,global.mrobo_y[mrid]+1);iy++)
            {
                bfs_map_can_atk[ix,iy]=true
            }
        }
    }
    else if(map_dre==270)
    {
        for(iy=min(global.map_h[mapid],global.mrobo_y[mrid]+1);iy<min(global.map_h[mapid],global.mrobo_y[mrid]+ls_long);iy++)
        {
            for(ix=max(0,global.mrobo_x[mrid]-1);ix<=min(global.map_w[mapid]-1,global.mrobo_x[mrid]+1);ix++)
            {
                bfs_map_can_atk[ix,iy]=true
            }
        }
    }
    else if(map_dre==180)
    {
        for(ix=max(0,global.mrobo_x[mrid]-1);ix>max(0,global.mrobo_x[mrid]-ls_long);ix--)
        {
            for(iy=max(0,global.mrobo_y[mrid]-1);iy<=min(global.map_h[mapid]-1,global.mrobo_y[mrid]+1);iy++)
            {
                bfs_map_can_atk[ix,iy]=true
            }
        }
    }
    else if(map_dre==90)
    {
        for(iy=max(0,global.mrobo_y[mrid]-1);iy>max(0,global.mrobo_y[mrid]-ls_long);iy--)
        {
            for(ix=max(0,global.mrobo_x[mrid]-1);ix<=min(global.map_w[mapid]-1,global.mrobo_x[mrid]+1);ix++)
            {
                bfs_map_can_atk[ix,iy]=true
            }
        }
    }
}
else if(global.wep_map_type[wid]==2)//吐息型
{
    //show_message(string(map_dre))
    ix=global.mrobo_x[mrid]    
    iy=global.mrobo_y[mrid] 
    ls_long=wep_get_long(wid,mrid)+1
    if(map_dre==0)
    {
        for(ix=min(global.map_w[mapid],global.mrobo_x[mrid]+1);ix<min(global.map_w[mapid],global.mrobo_x[mrid]+ls_long);ix++)
        {
            var vh=abs(ix-global.mrobo_x[mrid])-1
            for(iy=max(0,global.mrobo_y[mrid]-vh);iy<=min(global.map_h[mapid]-1,global.mrobo_y[mrid]+vh);iy++)
            {
                bfs_map_can_atk[ix,iy]=true
            }
        }
    }
    else if(map_dre==270)
    {
        for(iy=min(global.map_h[mapid],global.mrobo_y[mrid]+1);iy<min(global.map_h[mapid],global.mrobo_y[mrid]+ls_long);iy++)
        {
            var vw=abs(iy-global.mrobo_y[mrid])-1
            for(ix=max(0,global.mrobo_x[mrid]-vw);ix<=min(global.map_w[mapid]-1,global.mrobo_x[mrid]+vw);ix++)
            {
                bfs_map_can_atk[ix,iy]=true
            }
        }
    }
    else if(map_dre==180)
    {
        for(ix=max(0,global.mrobo_x[mrid]-1);ix>max(0,global.mrobo_x[mrid]-ls_long);ix--)
        {
            var vh=abs(ix-global.mrobo_x[mrid])-1
            for(iy=max(0,global.mrobo_y[mrid]-vh);iy<=min(global.map_h[mapid]-1,global.mrobo_y[mrid]+vh);iy++)
            {
                bfs_map_can_atk[ix,iy]=true
            }
        }
    }
    else if(map_dre==90)
    {
        for(iy=max(0,global.mrobo_y[mrid]-1);iy>max(0,global.mrobo_y[mrid]-ls_long);iy--)
        {
            var vw=abs(iy-global.mrobo_y[mrid])-1
            for(ix=max(0,global.mrobo_x[mrid]-vw);ix<=min(global.map_w[mapid]-1,global.mrobo_x[mrid]+vw);ix++)
            {
                bfs_map_can_atk[ix,iy]=true
            }
        }
    }
}
//可以开始绘制了
drawing=true

