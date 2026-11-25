/// @description spirit40_craft(mrid)
/// @param mrid
function spirit40_craft(argument0) {
	var mrid,pid,rid,i,qtext,k,wflag;
	mrid=argument0
	rid=global.mrobo_id[mrid]
	pid=global.mrobo_pliot[mrid]
	var lslist=ds_list_create()
	for(i=0;i<global.wep_num;i++)
	{
		if(global.wep_extra[i])
		{
			wflag=true
			for(k=0;k<8;k++)
			{
				if(global.mrobo_wep[mrid,k]==i)
				{
					wflag=false
					break
				}
			}
			if(wflag)ds_list_add(lslist,i)
		}
	}
	ds_list_shuffle(lslist)
	qtext=global.wep_name[lslist[| 0]]
	mrobo_get_wep(mrid,lslist[| 0])
	ds_list_destroy(lslist)
	a=instance_create(2,2,ability_change_con)
	a.mode=0
	a.mrid=mrid
	a.dmg=2000
	a.xs_fx=true
	a.xs_fx_ind=spfx12_genx2
	a.avl_name=qtext
	return true;



}
