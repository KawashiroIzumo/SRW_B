cold=true
index=-1
alarm[0]=90
if(global.cofing[? "languege"]<0)global.cofing[? "languege"]=0
button_num=5
button_text[0,0]="开始新游戏"
button_text[1,0]="读取存档"
button_text[2,0]="从中断处继续"
button_text[3,0]="设置"
button_text[4,0]="退出游戏"

button_text[0,1]="玩"
button_text[1,1]="负荷"
button_text[2,1]="延续"
button_text[3,1]="情节背景"
button_text[4,1]="罢休"
global.bgm=BGMsrwOP_geernika
if(!audio_is_playing(global.bgm))
{
    audio_stop_all()
    audio_play_sound(global.bgm,1,1)
}

