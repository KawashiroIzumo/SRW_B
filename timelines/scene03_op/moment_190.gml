/// @description 波澜哥对话内容
qname="波澜哥"
qtext=@"报告，他昨天晚上约了一个和他一样是紫色的大姐姐，
#然后被灌醉了，是我把他背回来的，现在他躺在床上人事不省。"
qhead=po00_bolan
with(talk_scene)
{
    i=1
    actor_sprite[i]=plo09_warwolf_stand
    actor_combo[i]=noone
    
    i=3
    actor_sprite[i]=plo00_wavebro_talk
    actor_combo_nj[i]=2
    actor_combo[i]=plo00_wavebro_stand
}

create_dhk(qname,qtext,qhead)

