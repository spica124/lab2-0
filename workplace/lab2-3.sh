
#!/bin/bash
#Written by Himanshu
#set -x
 read -p "enter the weight in kg:" wgt
 read -p "enter the height in meter:" mtr
 y=`expr "scale=2; $mtr * $mtr" | bc`
BMI=`expr "scale=2; $wgt / $y" | bc`
if [ 1 -eq "$((echo "$BMI < 18.5") | bc)" ]
    then
       echo "you are underweight"
  elif [ 1 -eq "$((echo "$BMI > 18.5") | bc)" ] && [ 1 -eq "$((echo "$BMI < 24.5") | bc)" ]
    then
       echo "you are normal"
     elif [ 1 -eq "$((echo "$BMI > 25") | bc)" ] && [ 1 -eq "$((echo "$BMI < 29.9") | bc)" ]
    then
         echo "you are overweight"
    else
         echo "you are obese"
    fi
