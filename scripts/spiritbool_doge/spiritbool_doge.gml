/// @description spiritbool_doge(mrid)
/// @param mrid
function spiritbool_doge(argument0) {
	var mrid,pid,rid;
	mrid=argument0
	rid=global.mrobo_id[mrid]
	if(rid<0)return false;
	pid=global.mrobo_pliot[mrid]
	if(find_buff(mrid,5)>=0)return false;
	return true;



}
