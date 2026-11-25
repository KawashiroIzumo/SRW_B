/// @description workout_can_atk_wep_target(mrid,stand,wid,tmrid)
/// @param mrid
/// @param stand
/// @param wid
/// @param tmrid
function workout_can_atk_wep_target(argument0, argument1, argument2, argument3) {
	var mrid,rid,wid,lk,dis,tmrid,ls_long,ii,j;
	mrid=argument0
	rid=global.mrobo_id[mrid]
	wid=argument2
	tmrid=argument3
	if(global.mrobo_id[tmrid]<0)return false;
	if(wid>=0)
	{
		if(global.wep_bullet[wid]>0)
		{
			for(j=0;j<40;j++)
		    {
				if(global.mrobo_wep[mrid,j]==wid)
				{
					if(global.mrobo_wep_bullet[mrid,j]<=0)return false
					break;
				}
			}
		}
	    ls_long=wep_get_long(wid,mrid)
		if(global.wep_map[wid])return false;
	    if(global.wep_en[wid]>global.mrobo_en[mrid])return false;
	    if(global.wep_ql[wid]>global.mrobo_pliot_ql[mrid])return false;
	    if(global.wep_move[wid]==false&&argument1==false)return false;
	    lk=tmrid;
	    if(lk==mrid)return false;
	    if(global.mrobo_team[lk]==global.mrobo_team[mrid])return false;
	    else
	    {
	        dis=abs(global.mrobo_x[lk]-global.mrobo_x[mrid])+abs(global.mrobo_y[lk]-global.mrobo_y[mrid])
	        if(dis>=global.wep_short[wid]&&dis<=ls_long)
	        {
	            return true;
	        }
	    }
	}
	return false;



}
