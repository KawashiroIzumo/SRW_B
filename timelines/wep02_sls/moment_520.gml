var i;
i=actors_now

j=5
actors_sprite[j]=fx02_jitps
actors_x[j]=actors_x[7]
actors_y[j]=actors_y[7]
actors_xs[j]=actors_xs[i]
actors_ys[j]=actors_ys[i]
actors_image[j]=0
actors_image_speed[j]=1
actors_grow[j]=0
actors_alpha[j]=1
actors_disappear[j]=0
actors_rotate_speed[j]=0
actors_blend[j]=bm_add
actors_speed[j]=20

j=7
actors_image[j]=79
actors_image_speed[j]=0
actors_speed[j]=20
actors_direction[j]=180
if(i==0)
{
    actors_direction[j]=0
}

actors_direction[5]=0
actors_direction[7]=0
if(i==0)
{
    battlecam_direction=180
    actors_direction[5]=180
    actors_direction[7]=180
}

nowdmg=dmg
nowdmg_ala=90
pid=global.mrobo_pliot[mrid[!i]]
actors_change_dmg_text(pid,(global.mrobo_hp[mrid[!i]]-nowdmg)/global.robo_hp[global.mrobo_id[mrid[!i]]])

