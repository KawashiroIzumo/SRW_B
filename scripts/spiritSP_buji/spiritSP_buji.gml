/// @description spiritSP_buji(mrid)
/// @param mrid
function spiritSP_buji(argument0) {
	var mrid,pid,rid,i,wid;
	mrid=argument0
	rid=global.mrobo_id[mrid]
	if(rid<0)return false;
	pid=global.mrobo_pliot[mrid]
	a=instance_create(2,2,ability_change_con)
	a.mode=1
	a.mrid=mrid
	a.dmg=global.mrobo_enm[mrid]
	a.xs_fx=true
	a.xs_fx_ind=spfx15_buji
	for(i=0;i<10;i++)
	{
	    wid=global.mrobo_wep[mrid,i]
	    if(wid>=0)
	        global.mrobo_wep_bullet[mrid,i]=global.wep_bullet[wid]
	}
	global.mrobo_pliot_ql[mrid]-=10
	if(global.mrobo_pliot_ql[mrid]<60)global.mrobo_pliot_ql[mrid]=60
	var b=200
	var ap=1,lvx;
	lvx=global.pliot_lv[global.mrobo_pliot[mrid]]-global.pliot_lv[global.mrobo_pliot[source]]
	if(lvx>=0)ap+=0.3*min(10,lvx)
	else if(lvx==-1)ap=0.7
	else if(lvx==-2)ap=0.5
	else if(lvx==-3)ap=0.35
	else if(lvx==-4)ap=0.2
	else if(lvx==-5)ap=0.1
	else if(lvx==-6)ap=0.05
	else ap=0.02
	a.destroy_script=abillity_des00
	a.destroy_argument0=source
	a.destroy_argument1=b*ap
	//show_message("ex="+string(b*ap))
	a.destroy_argument2=0
	global.mrobo_E[source]=1
	with(DND_player)
	{
		inchoose=false
		moved=false
	    onchoose=-1
	}
	return true;



}
