var flag,j;
if(alarm[2] mod 2==1)
{   
    for(now+=0;now<blt_end;now++)
    {
        if(battle_qr.actors_sprite[now]==noone)
        {
            flag=true
            break;
        }
        else if(point_in(battle_qr.battlecam_x-860,battle_qr.battlecam_y-600,battle_qr.battlecam_x+860,battle_qr.battlecam_y+600,battle_qr.actors_x[now],battle_qr.actors_y[now])==false)
        {
            flag=true
            break;
        }
    }
    if(flag)
    with(battle_qr)
    {
        var i,j,k;
        j=other.now
        i=actors_now
        actors_sprite[j]=d24_clock
        k=irandom_range(1,5)
        if(k<=2)actors_image[j]=7
        else if(k<=4)actors_image[j]=8
        else actors_image[j]=6
        actors_image_speed[j]=0
        actors_x[j]=battlecam_x+(1-2*i)*640
        actors_y[j]=battlecam_y-360+irandom(720)
        actors_xs[j]=1.5
        actors_ys[j]=1.5
        actors_alpha[j]=1
        actors_disappear[j]=0
        actors_rotate_speed[j]=0
        actors_grow[j]=0
        actors_speed[j]=48
        if(k==5)actors_speed[j]=32
        actors_direction[j]=point_direction(actors_x[j],actors_y[j],actors_x[!i],actors_y[!i])-5+irandom(10)
        actors_rotate[j]=actors_direction[j]+90
    }
    
}

