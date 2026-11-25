/// @description add_base_mrobo(rid,pliot,hp_kai,en_kai,ac_kai,ab_kai,def_kai,wep_kai)
/// @param rid
/// @param pliot
/// @param hp_kai
/// @param en_kai
/// @param ac_kai
/// @param ab_kai
/// @param def_kai
/// @param wep_kai
function add_base_mrobo(argument0, argument1, argument2, argument3, argument4, argument5, argument6, argument7) {
	for(i=0;i<100;i++)
	{
	    if(global.base_rid[i]==-1)
	    {
	        add_base_clean(i)
	        global.base_rid[i]=argument0
	        global.base_enabled[i]=true
	        global.base_hp_kai[i]=argument2
	        //show_message("global.base_hp_kai["+string(i)+"]="+string(global.base_hp_kai[i]))
	        global.base_en_kai[i]=argument3
	        global.base_ac_kai[i]=argument4
	        global.base_ab_kai[i]=argument5
	        global.base_def_kai[i]=argument6
	        global.base_wep_kai[i]=argument7
	        global.base_pliot[i]=argument1
	        for(j=0;j<10;j++)
	        {
	            global.base_wep_enabled[i,j]=true
	            global.base_wep[i,j]=global.robo_wep[argument0,j]
	            global.base_wep_enabled[i,j]=global.robo_wep_enabled[argument0,j]
	            if(global.robo_wep[argument0,j]>=0&&global.robo_wep[argument0,j]<global.wep_num)global.base_wep_extra[i,j]=false
	            else global.base_wep_extra[i,j]=true
	            global.base_equip[i,j]=-1
	            global.base_sub_pilot[i,j]=-1
	        }
	        return i;
	        break;
	    }
	}



}
