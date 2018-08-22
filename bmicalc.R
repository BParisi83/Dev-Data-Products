## BMI Calculator
metric = 1;

us = 2;

wt <- 120
        
ht <- 60
bmi <- if (unit = 1){
        wt/(ht)^2
}else { 
        703 * wt/(ht)^2
}

bmiCat <- if (bmi < 18){
        'Underweight'
} else if (bmi < 25) {
        'Normal Weight'
} else if (bmi < 30 ){
        'Overweight'
} else {
        'Obese'
}