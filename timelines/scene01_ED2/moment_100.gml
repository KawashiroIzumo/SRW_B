/// @description 对话内容
qname="幽幽子"
qtext=@"啊啊.....小笼包，叉烧包，奶黄芝麻豆沙包，大肉包
，菜包，灌汤包.........嘶溜......好饿....."
qhead=thh27_uuz
create_dhk(qname,qtext,qhead)
with(talk_scene)
{   
    i=0
    actor_enable[i]=true
    actor_active[i]=true
    actor_play[i]=true
    actor_sprite[i]=thca27_uuz_talk
    actor_combo_nj[i]=4
    actor_combo[i]=noone
    actor_mirror[i]=0
}

