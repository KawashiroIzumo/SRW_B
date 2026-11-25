/// @description 受击
wepscript_hurt()

var j=114514//改成挨打者的编号
var a=actors_object[j]
with(a)instance_change(battle_actor_obj,false);


audio_play_sound(sound13_shiled003,1,false)
playdh_mbdmg=0.5
var i;
i=actors_now
pid=global.mrobo_pliot[mrid[!i]]
actors_change_dmg_text(pid,(global.mrobo_hp[mrid[!i]]-nowdmg)/global.robo_hp[global.mrobo_id[mrid[!i]]])


