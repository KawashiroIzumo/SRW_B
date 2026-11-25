/// @description view_do_center_find_robo(rid) 
/// @param rid
function view_do_center_find_robo(argument0) {
	//使画面正对其中一种机器人
	var li,lsx,lsy,rid,lj,vflag,a;
	li=mrobo_find_robo(argument0)
	if(li>=0)//找到了的情况
	{
	    lsx=global.mrobo_x[li]
	    lsy=global.mrobo_y[li]
	    view_do_center_puz(0,lsx,lsy)
	    return li;
	}
	//未找到的情况
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
	                lsx=global.mrobo_x[li]
	                lsy=global.mrobo_y[li]
	                view_do_center_puz(0,lsx,lsy)
	                return li;
	            }
	        }
	    }
	}
	//还是未找到的情况
	global.lsvariable[99]=argument0
	global.lsvariable[100]=noone
	with(flagobj_deadrobot)
	{
	    var rid=mrobo_id;
	    var vflag=false;
	    if(mrobo_id==global.lsvariable[99])
	    {
	        vflag=true
	    }
	    else
	    {
	        for(lj=0;lj<10;lj++)
	        {
	            if(global.robo_transform[rid,lj]==global.lsvariable[99])
	            {
	                vflag=true
	            }
	            else if(global.robo_fl[rid,lj]==global.lsvariable[99])
	            {
	                vflag=true
	            }
	            else if(global.robo_hz[rid,lj]==global.lsvariable[99])
	            {
	                vflag=true
	            }
	        }
	    }
	    if(vflag)
	    {
	        global.lsvariable[100]=id
	        break
	    }
	}
	if(instance_exists(global.lsvariable[100]))
	{
	    lsx=global.lsvariable[100].mrobo_x
	    lsy=global.lsvariable[100].mrobo_y
	    view_do_center_puz(0,lsx,lsy)
	    return -2;
	}
	return -1;




}
