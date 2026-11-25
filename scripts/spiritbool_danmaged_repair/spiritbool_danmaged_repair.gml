/// @description spiritbool_danmaged_repair(mrid)
/// @param mrid
function spiritbool_danmaged_repair(argument0) {
	var mrid,pid,rid,source;
	mrid=argument0
	source=DND_player.onchoose
	rid=global.mrobo_id[mrid]
	if(rid<0)return false;
	pid=global.mrobo_pliot[mrid]
	if(workout_dot_distance(global.mrobo_x[mrid],global.mrobo_y[mrid],global.mrobo_x[source],global.mrobo_y[source])>2)
	{
		return false;
	}
	if(global.mrobo_hp[mrid]>=global.mrobo_hpm[mrid])
	{
	    global.mrobo_hp[mrid]=global.mrobo_hpm[mrid]
	    return false;
	}
	return true;



}
