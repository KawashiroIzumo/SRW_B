/// @description view_do_center_find_pliot(pid) 
/// @param pid
function view_do_center_find_pliot(argument0) {
	//使画面正对其中一种驾驶员
	var li,lsx,lsy;
	for(li=0;li<256;li++)
	{
	    if(global.mrobo_id[li]>=0&&global.mrobo_pliot[li]==argument0)
	    {
	        lsx=global.mrobo_x[li]
	        lsy=global.mrobo_y[li]
	        view_do_center_puz(0,lsx,lsy)
	        return li;
	    }
	}
	//未找到的情况
	global.lsvariable[99]=argument0
	global.lsvariable[100]=noone
	with(flagobj_deadrobot)
	{
	    var vflag=false;
	    if(mrobo_pliot==global.lsvariable[99])
	    {
	        vflag=true
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
