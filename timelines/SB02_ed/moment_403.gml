/// @description 梁非凡对话内容
qname="梁非凡"
qtext=@"那你老婆赵冬妮可就是我的人了啊。
#是你出轨在先的，我不[\c:"+string(c_lime)+@"]绿你[\c:16777215]简直是对不起冬妮。
"
qhead=po33_liangfeifan
a=create_dhk(qname,qtext,qhead)
with(talk_scene)
{	
	i=3
    actor_sprite[i]=plo33_feifan_talk
	actor_image_index[i]=0
	actor_combo_nj[i]=1
	actor_speed[i]=0
    actor_combo[i]=plo33_feifan_stand
}

