/// @description spiritbool_danmaged_all(mrid)
/// @param mrid
function spiritbool_danmaged_all(argument0) {
	var mrid,pid,rid,i;
	mrid=argument0
	rid=global.mrobo_id[mrid]
	pid=global.mrobo_pliot[mrid]
	for(i=0;i<256;i++)
	{
	    rid=global.mrobo_id[i]
	    if(rid<0)continue;
	    if(global.mrobo_hp[i]<global.mrobo_hpm[i]&&global.mrobo_team[i]==0)
	    {
	        return true;
	    }
	}
	return false;



}
