/// @description 梁非凡对话内容
qname="梁非凡"
qtext=@"你以为现在还是中华民国时期啊，地球联邦的天网系统在新广州各处都有存在，
#我一个警察科长想调取这个是很正常的吧？
"
qhead=po33_liangfeifan
a=create_dhk(qname,qtext,qhead)
with(talk_scene)
{
    i=0
    actor_sprite[i]=plo31_liuxing_stand
	actor_speed[i]=0
    actor_combo[i]=noone
    i=1
    actor_sprite[i]=plo32_police_stand
	actor_speed[i]=0
	actor_mirror[i]=0
    actor_combo[i]=noone
    i=2
    actor_sprite[i]=plo32_police_stand
	actor_speed[i]=0
    actor_combo[i]=noone
	
	i=3
    actor_sprite[i]=plo33_feifan_talk
	actor_image_index[i]=0
	actor_combo_nj[i]=1
	actor_speed[i]=0
    actor_combo[i]=plo33_feifan_stand
}

