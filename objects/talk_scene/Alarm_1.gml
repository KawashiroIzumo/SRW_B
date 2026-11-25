if(audio_exists(global.bgm))
{
    if(!audio_is_playing(global.bgm))
    {
        audio_stop_all()
        audio_play_sound(global.bgm,1,1)
    }
}
alarm[1]=15

