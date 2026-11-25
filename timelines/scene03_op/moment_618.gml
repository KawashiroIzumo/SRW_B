/// @description 茄子对话内容
audio_play_sound(sound34_hkdrum,1,0)
qname="刘培茄"
qtext=@"我崩溃了真的。
#[\c:65535]通知，河城荷取女士，请带领信得过的整备班人员在[\c:16777215]能源仓[\c:65535]集合，有秘密任务，我马上到。其他无关人员请立即离开货舱。
"
qhead=po09_warwolf
a=create_dhk(qname,qtext,qhead)
with(talk_scene)
{
    eff_shock=30
}

