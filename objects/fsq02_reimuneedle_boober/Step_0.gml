with(battle_qr)
{
    var flag,j,i;
    i=actors_now
    for(j=100;j<205;j++)
    {
        if(actors_sprite[j]==d24_clock)
        {
            if(point_distance(actors_x[j],actors_y[j],actors_x[!i],actors_y[!i])<=128)
            {
                audio_play_sound(sound15_shiled002,1,0)
                actors_sprite[j]=d03_jade_g
                actors_speed[j]=1
                actors_disappear[j]=0.05
                actors_grow[j]=1
                if(actors_sprite[!i]==global.robo_spr_stand[global.mrobo_id[mrid[!i]]])
                {
                    actors_sprite[!i]=global.robo_spr_hurt[global.mrobo_id[mrid[!i]]]
                    if(avl_special>=0)
                    {
                        actors_sprite[!i]=global.robo_spr_defence[global.mrobo_id[mrid[!i]]]
                    }
                    actors_image[!i]=5
                    actors_image_speed[!i]=0
                }
            }
        }
        else if(actors_sprite[j]==robo01s00_ubisoft)
        {
            if(point_distance(actors_x[j],actors_y[j],actors_x[!i],actors_y[!i])<=128)
            {
                if(other.alarm[2] mod 4==0)audio_play_sound(sound14_shiled001,1,0)
                actors_speed[j]=0
                actors_image_speed[j]=2
                actors_disappear[j]=0.05
                if(actors_alpha[j]<=0.1)
                    actors_reset(j)
            }
        }
        else if(actors_sprite[j]==d03_jade_g)
        {
            if(actors_alpha[j]<=0.1)
                actors_reset(j)
        }
    }
}

