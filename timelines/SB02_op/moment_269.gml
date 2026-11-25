/// @description 梁非凡对话内容
qname="梁非凡"
qtext=@"说了就行了？告诉我秘书说要坐我位子就坐得了我的位子？
#告诉我秘书说要我老婆做你姨太太就做你姨太太？是不是这样？
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
    actor_combo[i]=noone
    i=2
    actor_sprite[i]=plo32_police_stand
	actor_speed[i]=0
    actor_combo[i]=noone
	
	i=3
    actor_sprite[i]=plo33_feifan_talk
	actor_image_index[i]=0
	actor_combo_nj[i]=3
	actor_speed[i]=0
    actor_combo[i]=plo33_feifan_stand
}

