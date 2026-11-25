///@description 动画始点
var i;
i=actors_now
actors_sprite[i]=ls_spr1
//show_message(sprite_get_name(ls_spr1))
actors_skeleton_animation[i]="CIWS_pose"
actors_image[i]=0
actors_image_speed[i]=1
audio_play_sound(sound145_machinegun00,1,0)
bk_speed=0