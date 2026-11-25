/// @description init_cost()
function init_cost() {
	for(j=0;j<10;j++)
	{
	    for(i=0;i<6;i+=1)
	    {
	        if(j<5)
	        {
	            global.cost_kai[i,j]=2000*(j+1)
	        }
	        else if(j==5)global.cost_kai[i,j]=10000
	        else global.cost_kai[i,j]=15000
	        global.cost_kai[5,0]=12000
	        if(i==1)
	        {
	            global.cost_kai[i,0]=2000
	            global.cost_kai[i,1]=3000
	            global.cost_kai[i,2]=5000
	            global.cost_kai[i,3]=5000
	            global.cost_kai[i,4]=5000
	            global.cost_kai[i,5]=10000
	            global.cost_kai[i,6]=10000
	            global.cost_kai[i,7]=15000
	            global.cost_kai[i,8]=15000
	            global.cost_kai[i,9]=15000
	        }
	        if(i==5)
	        {
	            if(j>0)
	            {
	                global.cost_kai[5,j]=global.cost_kai[5,j-1]+4000+j*1000
	                //show_message("global.cost_kai["+string(i)+","+string(j)+"]="+string(global.cost_kai[i,j]))
	            }
	        }
	    }
	}




}
