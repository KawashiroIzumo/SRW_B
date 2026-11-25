/// @description 对话内容
qname="博丽灵梦"
qtext=@"等等，这块气密装置怎么看都像是一块布啊。然后……
既然有修过了，但这垃圾桶为什么还不扶起来啊。"
qhead=po04_RIMsis
with(talk_scene)
{
    i=0
    actor_enable[i]=true
    actor_active[i]=true
    actor_play[i]=true
    actor_sprite[i]=thca00_reimu_talk
    actor_combo_nj[i]=2
    actor_combo[i]=thca00_reimu_stand
    actor_mirror[i]=false
}

create_dhk(qname,qtext,qhead)

