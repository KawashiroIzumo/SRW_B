/// @description 梁非凡对话内容
qname="梁非凡"
qtext=@"算了，有什么事情一会儿再说，杨阳，是谁在报警？？
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
	actor_combo_nj[i]=1
	actor_speed[i]=0
    actor_combo[i]=plo33_feifan_stand
}

