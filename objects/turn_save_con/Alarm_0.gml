cold=false
if directory_exists("quicksave")
{
    //show_message("发现存档，删除中")
    directory_destroy("quicksave");
}
add_save_stage("quicksave\\imyourfather")
audio_play_sound(SE02_onepoint24,1,0)
save_sucessfull=true

