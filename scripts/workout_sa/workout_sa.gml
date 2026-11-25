/// @description workout_sa(mapid,sdtype,mrid)
/// @param mapid
/// @param sdtype
/// @param mrid
function workout_sa(argument0, argument1, argument2) {
	var mapid=argument0,sdtype=argument1,mrid=argument2,sa;
	sa=global.dtype_mcost[sdtype]
	    if(sa<500)
	    {
	        if(global.mrobo_fly[mrid])
	        {
	            if(global.mrobo_place[mrid,0]>=3)
	            sa=1
	            else sa=2
	        }
	        else
	        {
	            if(global.map_space[mapid]==1)
	            {
	                if(global.mrobo_place[mrid,3]<3)
	                sa+=1
	            }
	            else if(global.dtype_water[sdtype])
	            {
	                //show_message(string(sdtype)+"位置遇水，sa="+string(sa))
	                if(global.mrobo_place[mrid,2]<3)
	                sa+=1
	                //show_message("机体水中适应性能"+string(global.mrobo_place[mrid,2])+" 现在sa="+string(sa))
	            }
	            else
	            {
	                if(global.mrobo_place[mrid,1]<3)
	                sa+=1
	            }
	        }
	    }
	return sa;



}
