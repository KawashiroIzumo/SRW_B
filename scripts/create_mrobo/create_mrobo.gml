/// @description create_mrobo(rid,x,y,team,pliot)
/// @param rid
/// @param x
/// @param y
/// @param team
/// @param pliot
function create_mrobo(argument0, argument1, argument2, argument3, argument4) {
	var flag,mis,i,j,k,ax,ay,mp;
	flag=-1
	var i=argument0;
	mp=ds_map_create()
	for(ax=0;ax<30;ax+=1)
	{
	    for(ay=0;ay<30;ay+=1)
	    {
	        mp[? string(ax)+","+string(ay)]=-1
	    }   
	}
	for(mis=0;mis<256;mis++)
	{
	    if(global.mrobo_id[mis]>=0)
	    {
	        if(!global.mrobo_onship[mis])
	        {
	            ax=global.mrobo_x[mis]
	            ay=global.mrobo_y[mis]
	            mp[? string(ax)+","+string(ay)]=mis
	        }
	    }
	}
	var tfalg=-1;
	ax=argument1
	ay=argument2
	while(1)
	{
	    if(mp[? string(ax)+","+string(ay)]==-1)break
	    else if(ax>=1&&mp[? string(ax-1)+","+string(ay)]==-1)ax-=1
	    else if(ax<29&&mp[? string(ax+1)+","+string(ay)]==-1)ax+=1
	    else if(ay>=1&&mp[? string(ax)+","+string(ay-1)]==-1)ay-=1
	    else ay+=1
	}
	ds_map_destroy(mp)
	for(mis=0;mis<256;mis++)
	{
	    if(global.mrobo_id[mis]<0)
	    {
	        mrobo_reset_single(mis)
	        global.mrobo_id[mis]=i
	        global.mrobo_x[mis]=ax
	        global.mrobo_y[mis]=ay
	        global.mrobo_team[mis]=argument3
	        global.mrobo_pliot[mis]=argument4
	        global.mrobo_hp[mis]=global.robo_hp[i]
	        global.mrobo_hpm[mis]=global.robo_hp[i]
	        global.mrobo_en[mis]=global.robo_en[i]
	        global.mrobo_enm[mis]=global.robo_en[i]
	        global.mrobo_ac[mis]=global.robo_ac[i]
	        global.mrobo_ab[mis]=global.robo_ab[i]
	        global.mrobo_def[mis]=global.robo_def[i]
	        global.mrobo_wep_kai[mis]=0
	        global.mrobo_pliot_c_name[mis]=global.pliot_name[argument4]
	        global.mrobo_pliot_c_head[mis]=global.pliot_head[argument4]
	        global.mrobo_pliot_ql[mis]=100
	        global.mrobo_pliot_sp[mis]=global.pliot_sp[argument4]
	        global.mrobo_E[mis]=false
	        for(j=0;j<10;j++)
	        {
	            global.mrobo_wep[mis,j]=global.robo_wep[i,j]
				global.mrobo_special[mis,j]=global.robo_special[i,j]
	            //show_message("global.robo_wep["+string(i)+","+string(j)+"]"+string(global.robo_wep[i,j]))
	            global.mrobo_wep_enabled[mis,j]=global.robo_wep_enabled[i,j]
	            if(global.robo_sub_pliot[i,j]>=0)
	            {
	                var lspid=global.robo_sub_pliot[i,j];
	                global.mrobo_sub_pliot[mis,j]=lspid
	                while(global.pliot_lv[lspid]<global.pliot_lv[argument4])
	                {
	                    pliot_lvup(lspid)
	                }
	                global.mrobo_sub_sp[mis,j]=global.pliot_sp[lspid]
	            }
	            else global.mrobo_sub_sp[mis,j]=0
            
	        }
	        if(global.robo_magic[i])
	        {
	            for(j=0;j<10;j++)
	            {
	                if(global.pliot_perk[argument4,j]==3)
	                {
	                    global.mrobo_enm[mis]+=global.pliot_perk_lv[argument4,j]*10
	                }
	            }
	        }
	        for(j=0;j<4;j++)
	        {
	            global.mrobo_place[mis,j]=global.robo_place[i,j]
	            global.mrobo_place_go[mis,j]=global.robo_place_go[i,j]
	            global.mrobo_wep_place[i,j]=0
	        }
	        mrobo_refrish(mis)
	        return mis;
	    }
	}

	return flag;



}
