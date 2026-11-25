/// @description spiritSP_repair(mrid)
/// @param mrid
function spiritSP_repair(argument0) {
	var mrid,pid,rid,i,source;
	mrid=argument0
	source=DND_player.onchoose
	rid=global.mrobo_id[mrid]
	pid=global.mrobo_pliot[mrid]
	a=instance_create(2,2,ability_change_con)
	a.mode=0
	a.mrid=mrid
	a.dmg=global.pliot_lv[global.mrobo_pliot[source]]*60+1200
	a.xs_fx=true
	a.xs_fx_ind=spfx12_genx2
	var b=a.dmg/10
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
