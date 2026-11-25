/// @description spiritbool_danmaged(mrid)
/// @param mrid
function spiritbool_danmaged(argument0) {
	var mrid,pid,rid;
	mrid=argument0
	rid=global.mrobo_id[mrid]
	if(rid<0)return false;
	pid=global.mrobo_pliot[mrid]
	if(global.mrobo_hp[mrid]>=global.mrobo_hpm[mrid])
	{
	    global.mrobo_hp[mrid]=global.mrobo_hpm[mrid]
	    return false;
	}
	return true;



}
