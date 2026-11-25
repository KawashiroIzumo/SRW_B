/// @description slot_px(projectid)
/// @param projectid
function slot_px(argument0) {
	if(argument0<=2)
	{
	    var p=0;
	    slot_num=0
	    for(i=0;i<100;i++)
	    {
	        slot_queue[i]=-1
	    }
	    for(i=0;i<100;i++)
	    {
	        var sflag=false
	        for(j=p;j<100;j++)
	        {
	            var pflag=false
	            //show_message("global.base_rid["+string(j)+"]="+string(global.base_rid[j]))
	            if(global.base_rid[j]<0||global.base_enabled[j]==false)
	                continue
	            else if(argument0==1)
	            {
	                l=global.base_rid[j]
	                for(k=0;k<10;k++)
	                {
	                    if(global.robo_hz[l,k]>=0)
	                    {
	                        pflag=true
	                    }
	                }
	            }
	            else if(argument0==2)
	            {
	                l=global.base_rid[j]
	                for(k=0;k<40;k++)
	                {
	                    //if(global.robo_special[l,k]>=0)show_message(global.special_name[global.robo_special[l,k]])
	                    if(global.robo_special[l,k]==11)
	                    {
	                        pflag=true
	                    }
	                }
	            }
	            else pflag=true
	            if(!pflag)continue
	            else
	            {
	                //show_message("fuck")
	                slot_num++
	                p=j+1
	                slot_queue[i]=j
	                sflag=true
	                break
	            }
	        }
	        if(!sflag)break;
	    }
	}
	return -1;



}
