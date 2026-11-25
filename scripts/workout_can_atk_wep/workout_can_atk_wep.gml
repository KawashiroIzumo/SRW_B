/// @description workout_can_atk_wep(mrid,stand,wid)
/// @param mrid
/// @param stand
/// @param wid
function workout_can_atk_wep(argument0, argument1, argument2) {
	var mrid,rid,wid,lk,dis,ls_long,pid,i,wid2;
	mrid=argument0
	rid=global.mrobo_id[mrid]
	pid=global.mrobo_pliot[mrid]
	wid=argument2
	wid2=-1
	for(i=0;i<8;i++)
	{
		if(global.mrobo_wep[mrid,i]==wid)
		{
			wid2=i
			break
		}
	}
	if(wid>=0)
	{
	    ls_long=wep_get_long(wid,mrid)
		var j,k,pflag=true;
		for(j=0;j<10;j++)
		{
			if(global.wep_perk_ignore[wid,j]<0)continue;
			else
			{
				pflag=false
				for(k=0;k<10;k++)
				{
					if(global.pliot_perk[pid,k]==global.wep_perk_ignore[wid,j]&&global.pliot_perk_lv[pid,k]>=global.wep_perk_ignore_lv[wid,j])
					{
						pflag=true
						break
					}
				}
			}
		}
		if(!pflag)return false;
		if(wid2<0)return false;
	    if(global.wep_move[wid]==false&&argument1==false)return false;
	    if(global.wep_en[wid]>global.mrobo_en[mrid])return false;
	    if(global.wep_bullet[wid]>0&&global.mrobo_wep_bullet[mrid,wid2]<=0)return false;
	    if(global.wep_ql[wid]>global.mrobo_pliot_ql[mrid])return false;
	    if(global.wep_map[wid])return true
	    for(lk=0;lk<256;lk++)
	    {
	        if(lk==mrid)continue;
	        if(global.mrobo_id[lk]<0)continue;
	        if(global.mrobo_team[lk]!=global.mrobo_team[mrid])
	        {
	            dis=abs(global.mrobo_x[lk]-global.mrobo_x[mrid])+abs(global.mrobo_y[lk]-global.mrobo_y[mrid])
	            if(dis>=global.wep_short[wid]&&dis<=ls_long)
	            {
	                return true;
	            }
	        }
	    }
	}
	return false;



}
