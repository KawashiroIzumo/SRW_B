/// @description spiritbool_ll(mrid)
/// @param mrid
function spiritbool_love(argument0) {
	var mrid,pid,rid;
	mrid=argument0
	rid=global.mrobo_id[mrid]
	if(rid<0)return false;
	pid=global.mrobo_pliot[mrid]
	if(find_buff(mrid,2)<0)return true;
	if(find_buff(mrid,0)<0)return true;
	if(find_buff(mrid,5)<0)return true;
	if(find_buff(mrid,8)<0)return true;
	if(find_buff(mrid,11)<0)return true;
	if(find_buff(mrid,13)<0)return true;
	return false;



}
