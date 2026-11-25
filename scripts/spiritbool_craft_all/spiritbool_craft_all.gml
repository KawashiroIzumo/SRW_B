/// @description spiritbool_craft_all(mrid)
/// @param mrid
function spiritbool_craft_all(argument0) {
	var mrid,pid,rid,i;
	mrid=argument0
	rid=global.mrobo_id[mrid]
	pid=global.mrobo_pliot[mrid]
	for(i=0;i<256;i++)
	{
	    rid=global.mrobo_id[i]
	    if(rid<0)continue;
	    else if(spiritbool_craft(i))
	    {
	        return true;
	    }
	}
	return false;



}
