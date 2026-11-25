/// @description add_base_clean(i)
/// @param i
function add_base_clean(argument0) {
	var i=argument0,j=0;
	if(i>=0&&i<100)
	{
	    i=floor(i)
	    global.base_rid[i]=-1
	    global.base_lock[i]=false
	    global.base_enabled[i]=false
	    global.base_hp_kai[i]=0
	    global.base_en_kai[i]=0
	    global.base_ac_kai[i]=0
	    global.base_ab_kai[i]=0
	    global.base_def_kai[i]=0
	    global.base_wep_kai[i]=0
	    global.base_pliot[i]=0
	    for(j=0;j<10;j++)
	    {
	        global.base_wep_enabled[i,j]=true
	        global.base_wep[i,j]=-1
	        global.base_wep_extra[i,j]=false
	        global.base_equip[i,j]=-1
	        global.base_sub_pilot[i,j]=-1
	    }
	    return i;
	}
	else return -1;



}
