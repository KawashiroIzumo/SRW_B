/// @description 对话内容
qname="手机"
qtext="您的外卖订单已送到指定位置，请注意查收"
qhead=po12_cellphone
create_dhk(qname,qtext,qhead)
with(talk_scene)
{   
    i=0
    actor_sprite[i]=thca27_uuz_stand
    actor_combo_nj[i]=1
    i=1
    actor_sprite[i]=thca06_youmu_stand
    actor_combo_nj[i]=2
}

