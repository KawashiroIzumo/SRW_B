/// @description spiritbool_danmaged_buji(mrid)
/// @param mrid
function spiritbool_danmaged_buji(argument0) {
	var mrid,pid,rid,source,i;
	mrid=argument0
	if(instance_exists(spirit_choose_con))return false
	source=DND_player.onchoose
	if(mrid==source)return false;
	rid=global.mrobo_id[mrid]
	if(rid<0)return false;
	pid=global.mrobo_pliot[mrid]
	if(workout_dot_distance(global.mrobo_x[mrid],global.mrobo_y[mrid],global.mrobo_x[source],global.mrobo_y[source])>1)
	{
		return false;
	}
	if(global.mrobo_en[mrid]>=global.mrobo_enm[mrid])
	{
	    global.mrobo_en[mrid]=global.mrobo_enm[mrid]
		for(i=0;i<10;i++)
		{
			var wid=global.mrobo_wep[mrid,i];
			if(wid>=0&&global.mrobo_wep_enabled[mrid,i])
			{
				if(global.mrobo_wep_bullet[mrid,i]>=0&&global.wep_bullet[wid]>0)
				{
					return true;
				}
			}
		}
	    return false;
	}
	return true;



}
