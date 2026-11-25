/// @description spiritbool_jz(mrid)
/// @param mrid
function spiritbool_jz(argument0) {
	var mrid,pid,rid;
	mrid=argument0
	rid=global.mrobo_id[mrid]
	if(rid<0)return false;
	pid=global.mrobo_pliot[mrid]
	if(find_buff(mrid,10)>=0)return false;
	return true;



}
