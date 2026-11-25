if(type==1)
{
    var i,j,k,m,n;
    for(i=0;i<100;i++)
    {
        if(actor_enable[i]&&actor_sprite[i]!=noone)
        {
            j=1
            if(actor_mirror[i])j=-1
            k=c_white
            if(!actor_active[i])k=c_gray
            draw_sprite_ext(actor_sprite[i],actor_image_index[i],actor_x[i],actor_y[i],j,1,actor_rotate[i],k,actor_alpha[i])
            actor_rotate[i]+=actor_rotate_speed[i]
            if(actor_rotate[i]>360)actor_rotate[i]-=360
            else if(actor_rotate[i]<0)actor_rotate[i]+=360
        
            actor_x[i]+=dcos(actor_direction[i])*actor_speed[i]
            actor_y[i]-=dsin(actor_direction[i])*actor_speed[i]
            actor_alpha[i]-=actor_disappear[i]
            if(actor_alpha[i]<0)actor_alpha[i]=0
            if(actor_alpha[i]>1)actor_alpha[i]=1
            
            if(actor_play[i])actor_image_index[i]+=1
            if(actor_image_index[i]>=sprite_get_number(actor_sprite[i]))
            {
                actor_image_index[i]=0
                if(actor_combo[i]!=noone)
                {
                    actor_combo_nj[i]--
                    if(actor_combo_nj[i]<0)
                    {
                        actor_sprite[i]=actor_combo[i]
                        actor_combo[i]=noone
                    }
                }
            }
        }
    }
}

