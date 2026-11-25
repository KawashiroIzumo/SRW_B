cold=true
ondraw=false
alarm[0]=1
global.bgm=BGMsrw05_maoudamashii_cyber44
if(!audio_is_playing(global.bgm))
{
    audio_stop_all()
    audio_play_sound(global.bgm,1,1)
}

