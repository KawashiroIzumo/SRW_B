/// @description mrobo_find_robo(rid)
/// @param rid
function mrobo_find_robo(argument0) {
	var li,rid,vflag,lj;
	for(li=0;li<256;li+=1)
	{
	    if(global.mrobo_id[li]==argument0)return li;
	}
	for(li=0;li<256;li++)
	{
	    if(global.mrobo_id[li]>=0)
	    {
	        rid=global.mrobo_id[li]
	        vflag=false
	        for(lj=0;lj<10;lj++)
	        {
	            if(global.robo_transform[rid,lj]==argument0)
	            {
	                vflag=true
	            }
	            else if(global.robo_fl[rid,lj]==argument0)
	            {
	                vflag=true
	            }
	            else if(global.robo_hz[rid,lj]==argument0)
	            {
	                vflag=true
	            }
	            if(vflag)
	            {
	                return li;
	            }
	        }
	    }
	}
	return -1;



}
