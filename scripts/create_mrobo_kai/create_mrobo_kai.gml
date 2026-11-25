/// @description create_mrobo_kai(rid,x,y,team,pliot,kai)
/// @param rid
/// @param x
/// @param y
/// @param team
/// @param pliot
/// @param kai
function create_mrobo_kai(argument0, argument1, argument2, argument3, argument4, argument5) {
	var flag,mis;
	flag=-1
	var i=argument0;
	    mis=create_mrobo(i,argument1,argument2,argument3,argument4)
	    if(mis<0)return -1
	    else
	    {
	        global.mrobo_hpm[mis]=(100+(i!=35)*400)*argument5+global.mrobo_hpm[mis]
	        global.mrobo_hp[mis]=global.mrobo_hpm[mis]
	        global.mrobo_enm[mis]=10*argument5+global.mrobo_enm[mis]
	        global.mrobo_en[mis]=global.mrobo_enm[mis]
	        global.mrobo_ac[mis]=5*argument5+global.mrobo_ac[mis]
	        global.mrobo_ab[mis]=5*argument5+global.mrobo_ab[mis]
	        global.mrobo_def[mis]=50*argument5+global.mrobo_def[mis]
	        global.mrobo_wep_kai[mis]=argument5
	        mrobo_refrish(mis)
	        global.mrobo_E[mis]=false
	        return mis;
	    }



}
