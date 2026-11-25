/// @description 假的恢复
var mrid,pid,rid,i;
mrid=mrobo_find_robo(22)
global.mrobo_hp[mrid]=10
rid=global.mrobo_id[mrid]
pid=global.mrobo_pliot[mrid]
a=instance_create(2,2,ability_change_con)
a.mode=0
a.mrid=mrid
a.dmg=20000
a.xs_fx=true
a.xs_fx_ind=spfx12_genx2
return true;

