/// @description mrobo_reset_single(mrid)
/// @param mrid
function mrobo_reset_single(argument0) {
	var i,j;
	i=argument0
	if(i<0)return -1
	    global.mrobo_id[i]=-1
	    global.mrobo_base_id[i]=-1
	    global.mrobo_x[i]=-1
	    global.mrobo_y[i]=-1
	    global.mrobo_hp[i]=0
	    global.mrobo_hpm[i]=0
	    global.mrobo_en[i]=0
	    global.mrobo_enm[i]=0
	    global.mrobo_ac[i]=0
	    global.mrobo_ab[i]=0
	    global.mrobo_def[i]=0
	    global.mrobo_wep_kai[i]=0
	    global.mrobo_team[i]=0
	    global.mrobo_pliot[i]=0
	    global.mrobo_pliot_c_name[i]=" "
	    global.mrobo_pliot_c_head[i]=po_noname
	    global.mrobo_pliot_ql[i]=100
		global.mrobo_pliot_npc[i]=0
	    global.mrobo_pliot_sp[i]=0
	    for(j=0;j<40;j++)
	    {
	        global.mrobo_wep[i,j]=-1
	        global.mrobo_wep_bullet[i,j]=0
	        global.mrobo_wep_enabled[i,j]=1
	        global.mrobo_buff[i,j]=-1
	        global.mrobo_base[i,j]=-1
	        global.mrobo_variable[i,j]=-1
	    }
	    for(j=0;j<10;j++)
	    {
	        global.mrobo_sub_sp[i,j]=0
	        global.mrobo_special[i,j]=-1
	        global.mrobo_sub_pliot[i,j]=-1
	    }
	    for(j=0;j<4;j++)
	    {
	        global.mrobo_place[i,j]=0
	        global.mrobo_place_go[i,j]=0
	        global.mrobo_wep_place[i,j]=0
	        global.mrobo_equip[i,j]=-1
	        global.mrobo_equip_used[i,j]=0
	    }
	    global.mrobo_fly[i]=false
	    global.mrobo_E[i]=false
	    global.mrobo_death_jq[i]=noone
	    global.mrobo_onship[i]=false
	    global.mrobo_ai[i]=1
	        //0:不行动，1：突击犬
        
	return i;



}
