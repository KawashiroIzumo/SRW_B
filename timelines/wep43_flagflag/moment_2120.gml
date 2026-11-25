///@description 标准结尾
battleground_reset()
var i,rid;
i=actors_now
rid=global.mrobo_id[mrid[!i]]
if(dmg>=global.mrobo_hp[mrid[!i]]&&find_buff(mrid[i],4)<0)
{
    global.mrobo_hp[mrid[!i]]=0
    timeline_index=global.robo_death_tml[rid]
    timeline_position=-1
    timeline_speed=1
    timeline_running=true
}
else
alarm[2]=15

