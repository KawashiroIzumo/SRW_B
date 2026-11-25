/// @description 刘醒对话内容
qname="刘醒"
qtext=@"报告非凡哥，他现在在拘留所里面吃上了活啃猪尾巴，红烧钢丝球
"
qhead=po31_liuxing
a=create_dhk(qname,qtext,qhead)
with(talk_scene)
{
    i=0
    actor_sprite[i]=plo31_liuxing_talk
	actor_image_index[i]=0
	actor_combo_nj[i]=1
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

