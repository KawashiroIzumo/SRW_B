/// @description spirit25_ban(mrid)
/// @param mrid
function spirit25_ban(argument0) {
	var mrid,pid,rid,i;
	mrid=argument0
	rid=global.mrobo_id[mrid]
	pid=global.mrobo_pliot[mrid]
	for(i=0;i<256;i++)
	{
	    if(global.mrobo_team==0)
	    {
	        rid=global.mrobo_id[i]
	        if(rid>=0)
	        {
	            global.mrobo_hp[i]+=global.robo_hp[rid]*0.5
	            if(global.mrobo_hp[i]>global.robo_hp[rid])
	            {
	                global.mrobo_hp[i]=global.robo_hp[rid]
	            }
	        }            
	    }
	}
	a=instance_create(2,2,ability_change_con)
	a.mode=0
	a.mrid=mrid
	a.dmg=0
	a.xs_dig=false
	a.xs_fx=true
	a.xs_fx_ind=spfx25_ban
	return true;



}
