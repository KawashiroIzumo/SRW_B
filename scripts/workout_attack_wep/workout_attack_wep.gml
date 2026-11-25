/// @description workout_attack_wep(mrid,stand,tmrid)
/// @param mrid
/// @param stand
/// @param tmrid
function workout_attack_wep(argument0, argument1, argument2) {
	var mrid,rid,wid,lk,dis,tmrid,ii,lsatk,lswip;
	mrid=argument0
	rid=global.mrobo_id[mrid]
	tmrid=argument2
	lswip=-1
	lsatk=0
	for(ii=0;ii<10;ii++)
	{
	    wid=global.mrobo_wep[mrid,ii]
	    if(wid>=0&&script_exists(global.wep_enable_ignore[wid]))
	    {
	        global.mrobo_wep_enabled[mrid,ii]=script_execute(global.wep_enable_ignore[wid],mrid,wid)
	    }
	    if(global.mrobo_wep_enabled[mrid,ii]==false)continue
	    if(wid>=0)
	    {
			if(global.wep_bullet[wid]>0&&global.mrobo_wep_bullet[mrid,ii]<=0)continue
	        if(workout_can_atk_wep_target(mrid,argument1,wid,tmrid))
	        {
	            if(lsatk<global.wep_atk[wid])
	            {
	                lswip=wid
	                lsatk=global.wep_atk[wid]
	            }
	        }
	    }
	}
	return lswip;



}
