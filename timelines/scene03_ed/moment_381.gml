/// @description 周锦华对话内容
qname="周锦华"
qtext=@"是了，我始终坚信辽宁号可以打败吉翁部队的。
#通过这个手法，我们解决了吉翁的魔法实验部队，“博卡布之肚脐眼”
#嗯。之后还遭遇了铁十字的恶魔号战舰，也成功将其击退了。
"
qhead=po14_choujh
a=create_dhk(qname,qtext,qhead)
with(talk_scene)
{
    i=1
    actor_sprite[i]=plo14_zjh_talk
    actor_combo_nj[i]=2
    actor_combo[i]=plo14_zjh_stand
}

