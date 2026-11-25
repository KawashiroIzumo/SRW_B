/// @description workout_can_atk(mrid,stand)
/// @param mrid
/// @param stand
function workout_can_atk(argument0, argument1) {
	var mrid,rid,wid,l,k,dis,sflag;
	mrid=argument0
	rid=global.mrobo_id[mrid]
	//show_message("开始搜寻")
	for(l=0;l<10;l++)
	{
	    wid=global.mrobo_wep[mrid,l]
	    if(wid>=0&&script_exists(global.wep_enable_ignore[wid]))
	    {
	        global.mrobo_wep_enabled[mrid,l]=script_execute(global.wep_enable_ignore[wid],mrid,wid)
	    }
	    if(!global.mrobo_wep_enabled[mrid,l])continue;//屏蔽禁止使用的武器
	    if(wid>=0)
	    {
	        if(workout_can_atk_wep(mrid,argument1,wid))return true;
	    }
	}
	return false;



}
