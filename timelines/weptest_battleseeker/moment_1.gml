var spd=24
if(keyboard_check(vk_left))
{
    battlecam_x-=spd
    if(battlecam_x<0)battlecam_x=0
}
if(keyboard_check(vk_up))
{
    battlecam_y-=spd
    if(battlecam_y<360)battlecam_y=360
}
if(keyboard_check(vk_down))
{
    battlecam_y+=spd
    if(battlecam_y>1800)battlecam_y=1800
}
if(keyboard_check(vk_right))
{
    battlecam_x+=spd
    if(battlecam_x>5120-1280)battlecam_x=5120-1280
}
timeline_position=0

