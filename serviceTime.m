function output = serviceTime(x)
    for count=1:5
        if (count==1)
           serviceTime(count)=5; 
           prob(count)=0.1;
           CDF(count)=prob(count);
           firstNum(count)=1;
           lastNum(count)=CDF(count)*100;
           
        elseif(count==2)
           serviceTime(count)=6; 
           prob(count)=0.15;
           CDF(count)=CDF(count-1)+prob(count);
           firstNum(count)=lastNum(count-1)+1;
           lastNum(count)=CDF(count)*100;
           
        elseif(count==3)
           serviceTime(count)=7; 
           prob(count)=0.25;
           CDF(count)=CDF(count-1)+prob(count);
           firstNum(count)=lastNum(count-1)+1;
           lastNum(count)=CDF(count)*100;
   
        elseif(count==4)
           serviceTime(count)=8; 
           prob(count)=0.3;
           CDF(count)=CDF(count-1)+prob(count);
           firstNum(count)=lastNum(count-1)+1;
           lastNum(count)=CDF(count)*100;
           
        elseif(count==5)
           serviceTime(count)=9; 
           prob(count)=0.2;
           CDF(count)=CDF(count-1)+prob(count);
           firstNum(count)=lastNum(count-1)+1;
           lastNum(count)=CDF(count)*100;
        end
     end 
     printf('\n\n Counter 1 \n');
     printf('----------------------------------------------------\n');
     printf('| Service Time  |  Probability  |  CDF   | Range   |\n');
     printf('----------------------------------------------------\n');
     for count=1:5
         printf('|      %3.0f      |    %1.2f       |  %1.2f  |%3.0f-%3.0f  |\n',[serviceTime(count),prob(count),CDF(count),firstNum(count),lastNum(count)]);
     end
     printf('----------------------------------------------------\n');
     
     
     for count=1:5
        if (count==1)
           serviceTime(count)=6; 
           prob(count)=0.15;
           CDF(count)=prob(count);
           firstNum(count)=1;
           lastNum(count)=CDF(count)*100;
           
        elseif(count==2)
           serviceTime(count)=7; 
           prob(count)=0.30;
           CDF(count)=CDF(count-1)+prob(count);
           firstNum(count)=lastNum(count-1)+1;
           lastNum(count)=CDF(count)*100;
           
        elseif(count==3)
           serviceTime(count)=8; 
           prob(count)=0.25;
           CDF(count)=CDF(count-1)+prob(count);
           firstNum(count)=lastNum(count-1)+1;
           lastNum(count)=CDF(count)*100;
   
        elseif(count==4)
           serviceTime(count)=9; 
           prob(count)=0.1;
           CDF(count)=CDF(count-1)+prob(count);
           firstNum(count)=lastNum(count-1)+1;
           lastNum(count)=CDF(count)*100;
           
        elseif(count==5)
           serviceTime(count)=10; 
           prob(count)=0.2;
           CDF(count)=CDF(count-1)+prob(count);
           firstNum(count)=lastNum(count-1)+1;
           lastNum(count)=CDF(count)*100;
        end
     end 
     printf('\n\n Counter 2 \n');
     printf('----------------------------------------------------\n');
     printf('| Service Time  |  Probability  |  CDF   | Range   |\n');
     printf('----------------------------------------------------\n');
     for count=1:5
         printf('|      %3.0f      |    %1.2f       |  %1.2f  |%3.0f-%3.0f  |\n',[serviceTime(count),prob(count),CDF(count),firstNum(count),lastNum(count)]);
     end
     
     printf('----------------------------------------------------\n');
     for count=1:3
        if (count==1)
           serviceTime(count)=3; 
           prob(count)=0.5;
           CDF(count)=prob(count);
           firstNum(count)=1;
           lastNum(count)=CDF(count)*100;
           
        elseif(count==2)
           serviceTime(count)=4; 
           prob(count)=0.15;
           CDF(count)=CDF(count-1)+prob(count);
           firstNum(count)=lastNum(count-1)+1;
           lastNum(count)=CDF(count)*100;
           
        elseif(count==3)
           serviceTime(count)=5; 
           prob(count)=0.35;
           CDF(count)=CDF(count-1)+prob(count);
           firstNum(count)=lastNum(count-1)+1;
           lastNum(count)=CDF(count)*100;
        end
     end 
     printf('\n\n Counter Express\n');
     printf('----------------------------------------------------\n');
     printf('| Service Time  |  Probability  |  CDF   | Range   |\n');
     printf('----------------------------------------------------\n');
     for count=1:3
         printf('|      %3.0f      |    %1.2f       |  %1.2f  |%3.0f-%3.0f  |\n',[serviceTime(count),prob(count),CDF(count),firstNum(count),lastNum(count)]);
     end
     printf('----------------------------------------------------\n');
     
 end