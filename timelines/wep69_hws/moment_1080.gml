/// @description 冤大头动作
var i;
i=actors_now
j=5
actors_reset(5)

pid=global.mrobo_pliot[mrid[!i]]
actors_change_dmg_text(pid,(global.mrobo_hp[mrid[!i]]-dmg)/global.robo_hp[global.mrobo_id[mrid[!i]]])
if(dmg>=global.mrobo_hp[mrid[!i]]&&find_buff(mrid[i],4)<0)
{
    actors_reset(!i)
    pid=global.mrobo_pliot[mrid[!i]]
    actors_change_death_text(pid,mrid[!i],mrid[i])
}
flag_UI=true

