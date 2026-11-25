/// @description 刘醒对话内容
qname="刘醒"
qtext=@"东山湖公园不是就在中山大学边上吗？学生仔们没出动吗？
"
qhead=po31_liuxing
a=create_dhk(qname,qtext,qhead)
with(talk_scene)
{
    i=0
    actor_sprite[i]=plo31_liuxing_talk
	actor_image_index[i]=0
	actor_combo_nj[i]=2
	actor_speed[i]=0
    actor_combo[i]=plo31_liuxing_stand
    i=1
    actor_sprite[i]=plo32_police_stand
	actor_speed[i]=0
    actor_combo[i]=noone
    i=2
    actor_sprite[i]=plo32_police_stand
	actor_speed[i]=0
    actor_combo[i]=noone
	i=3
    actor_sprite[i]=plo33_feifan_stand
	actor_speed[i]=0
    actor_combo[i]=noone
}

