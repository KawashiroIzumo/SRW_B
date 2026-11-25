/// @description create_mrobo_base(bid,x,y,team)
/// @param bid
/// @param x
/// @param y
/// @param team
function create_mrobo_base(argument0, argument1, argument2, argument3) {
	var flag,mis,i,j,k,pid;
	flag=-1
	j=argument0
	if(j<0)return;
	i=global.base_rid[j]
	pid=global.base_pliot[j]
	mis=create_mrobo(i,argument1,argument2,argument3,pid)
	    if(mis<0)return -1
	    else
	    {
	        global.mrobo_hpm[mis]+=(100+(i!=35)*400)*global.base_hp_kai[j]
	        //show_message("hp="+string(global.robo_hp[i])+"#global.base_hp_kai["+string(j)+"]="+string(global.base_hp_kai[j])+"#so,hp is "+string(global.mrobo_hp[mis]))
	        global.mrobo_enm[mis]+=10*global.base_en_kai[j]
	        global.mrobo_ac[mis]+=5*global.base_ac_kai[j]
	        global.mrobo_ab[mis]+=5*global.base_ab_kai[j]
	        global.mrobo_def[mis]+=50*global.base_def_kai[j]
        
	        global.mrobo_hpm[mis]=floor(global.mrobo_hpm[mis])
	        global.mrobo_enm[mis]=floor(global.mrobo_enm[mis])
	        global.mrobo_ab[mis]=floor(global.mrobo_ab[mis])
	        global.mrobo_ac[mis]=floor(global.mrobo_ac[mis])
	        global.mrobo_def[mis]=floor(global.mrobo_def[mis])
	        global.mrobo_wep_kai[mis]=global.base_wep_kai[j]
	        for(k=0;k<10;k++)
	        {
	            global.mrobo_wep[mis,k]=global.base_wep[j,k]
	            global.mrobo_wep_enabled[mis,k]=global.base_wep_enabled[j,k]
	        }
	        for(k=0;k<4;k++)
	        {
	            if(global.base_equip[j,k]>=0)
	            {
	                var eid=global.base_equip[j,k];
	                mrobo_add_equip(mis,k,eid)
	                //show_message("global.mrobo_equip[mis,"+string(k)+"]="+string(global.mrobo_equip[mis,k]))
	            }
	        }
	        mrobo_refrish(mis)
	        global.mrobo_E[mis]=false
	        return mis;
	    }



}
