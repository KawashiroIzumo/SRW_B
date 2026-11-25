///@description 显示伤害 受击台词
var i;
i=actors_now
nowdmg=dmg
nowdmg_ala=90
pid=global.mrobo_pliot[mrid[!i]]
actors_change_dmg_text(pid,(global.mrobo_hp[mrid[!i]]-nowdmg)/global.robo_hp[global.mrobo_id[mrid[!i]]])
