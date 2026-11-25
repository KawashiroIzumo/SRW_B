/// @description 茄子对话内容
audio_play_sound(sound34_hkdrum,1,0)
qname="刘培茄"
qtext=@"这周锦华贱不贱啊！等我点根……点根蚊香……！只恨我不在茂名混了，不然我屎不给他狙出来WCNM给我装逼！
"
qhead=po09_warwolf
a=create_dhk(qname,qtext,qhead)
with(talk_scene)
{
    eff_shock=30
}

