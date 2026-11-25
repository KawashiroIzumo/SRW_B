/// @description spiritbool_aim(mrid)
/// @param mrid
function spiritbool_sxlq(argument0) {
	var mrid,pid,rid;
	mrid=argument0
	rid=global.mrobo_id[mrid]
	if(rid<0)return false;
	pid=global.mrobo_pliot[mrid]
	if(find_buff(mrid,4)>=0)return false;
	else return true;




}
