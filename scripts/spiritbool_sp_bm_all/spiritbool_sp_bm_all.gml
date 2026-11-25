/// @description spiritbool_sp_bm_all(mrid)
/// @param mrid
function spiritbool_sp_bm_all(argument0) {
	var mrid,pid,rid,i;
	mrid=argument0
	rid=global.mrobo_id[mrid]
	pid=global.mrobo_pliot[mrid]
	for(i=0;i<256;i++)
	{
	    rid=global.mrobo_id[i]
	    pid=global.mrobo_pliot[i]
	    if(rid<0)continue;
	    if(global.mrobo_pliot_sp[i]<global.pliot_sp[pid])
	    {
	        return true;
	    }
	}
	return false;



}
