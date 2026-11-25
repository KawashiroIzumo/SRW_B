/// @description 警察1对话内容
qname="杨阳"
qtext=@"提坦斯对外公布的情况上是这样。但是，据说那个时候海兹尔还没有完成
#他们开的是没有外甲的试验机，手臂和烤鱿鱼一样。
"
qhead=po32_police
a=create_dhk(qname,qtext,qhead)
with(talk_scene)
{
    i=0
    actor_sprite[i]=plo31_liuxing_stand
	actor_speed[i]=0
    actor_combo[i]=noone
    i=1
    actor_sprite[i]=plo32_police_talk
	actor_image_index[i]=0
	actor_combo_nj[i]=1
	actor_speed[i]=0
    actor_combo[i]=plo32_police_stand
	
    i=2
    actor_sprite[i]=plo32_police_stand
	actor_speed[i]=0
    actor_combo[i]=noone
	i=3
    actor_sprite[i]=plo33_feifan_stand
	actor_speed[i]=0
    actor_combo[i]=noone
	
}

